package com.campus.myapp.controller;

import java.io.File;
import java.nio.charset.Charset;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.campus.myapp.service.MemberService;
import com.campus.myapp.vo.MemberVO;

//ȸ������, ȸ����������, �α���, �α׾ƿ�
@RestController
@RequestMapping("/member/")
public class MemberController {
	@Inject
	MemberService service;

	// �α���â���� �̵�
	@GetMapping("login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/login");
		return mav;
	}

	// ȸ���������� �̵�
	@GetMapping("register")
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/register");
		return mav;

	}

	// ȸ�����
	@PostMapping("memberOk")
	public ModelAndView memberFormOk(MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		// ȸ�����
		int cnt = service.memberInsert(vo);
		// Ŭ���̾�Ʈ �������� insert ����� ����
		mav.addObject("cnt", cnt);
		mav.setViewName("member/memberResult");
		return mav;
	}

	// �α���
	@PostMapping("loginOk")
	public ModelAndView loginOk(MemberVO vo, HttpSession session) {

		MemberVO vo2 = service.loginCheck(vo);

		ModelAndView mav = new ModelAndView();
		// �α��� ������ ���ǿ� id�� �̸� ����
		if (vo2 != null) {// �α��� ����
			session.setAttribute("logId", vo2.getUserid());
			session.setAttribute("logName", vo2.getName());
			session.setAttribute("logNum", vo2.getNum());
			session.setAttribute("logStatus", "Y");
			session.setAttribute("img", vo2.getImg());
			mav.setViewName("redirect:/");// '/' <- Ȩ���� �̵�
		} else {// �α��� ����
			mav.setViewName("redirect:login");
		}
		return mav;
	}


	@GetMapping("logout")
	// �α׾ƿ�
	public ModelAndView logout(HttpSession session) {
	
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}

	// ȸ������ ��������
	@GetMapping("memberEdit")
	public ModelAndView memberEdit(HttpSession session) {
		String userid = (String) session.getAttribute("logId");
		ModelAndView mav = new ModelAndView();
		
		MemberVO vo = service.memberSelect(userid);
		
		mav.addObject("vo", vo);
		mav.setViewName("member/profile");
		return mav;
	}

	@PostMapping("memberEditOk")
	public ResponseEntity<String> memberEditOk(MemberVO vo, HttpServletRequest request, HttpSession session) {
		// session�� �α��� ���̵� Ȯ��
		
		vo.setUserid((String) request.getSession().getAttribute("logId"));
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		
		//���� ���ε带 ���� ���ε� ��ġ�� �����ּ�
		String path = request.getSession().getServletContext().getRealPath("/upload");
		System.out.println("path-->"+path);
		try {
			//���Ͼ��ε带 ���� request��ü���� multipart��ü�� ���ؾ� �Ѵ�
			MultipartHttpServletRequest mr = (MultipartHttpServletRequest)request;
			
			//mr�� ������ ����ŭ multipartfile��ü�� �����ؾ� ��
			List<MultipartFile> files = mr.getFiles("imgName");
			
			
			if(files != null) {//if - 1
				
				
					//1.multipartfile��ü ������
					MultipartFile mf = files.get(0);
					//2.���ε��� ���� ���ϸ� ���ϱ�
					String orgFileName = mf.getOriginalFilename();
					System.out.println("orgFileName = " + orgFileName);
					
					//3.rename�ϱ�
					if(orgFileName != null && !orgFileName.equals("")) {//if - 3
						File f = new File(path, orgFileName);
						
						if(f.exists()) {//if - 4 ���� ���� ����
							for(int renameNum=1;;renameNum++) {// for - 5
								
								int point = orgFileName.lastIndexOf(".");
								String fileName = orgFileName.substring(0, point);//���ϸ�
								String ext = orgFileName.substring(point+1);//Ȯ����
								
								f = new File(path,fileName+" ("+renameNum+")."+ext);//���ο� ���ϸ�
								if(!f.exists()) {//if - 6   ���λ����� ���� ��ü�� ������
									orgFileName = f.getName();
									break;
								}
							}// for - 5
						}//if - 4
						
						try {
							mf.transferTo(f);//���� ���ε尡 ����
						} catch (Exception ee) {
							ee.printStackTrace();
						}
						
						vo.setImg(orgFileName);	
					}//if - 3
			}//if - 1
			System.out.println(vo.toString());
			//db���
			service.memberUpdate(vo);
			session.setAttribute("logName", vo.getName());
			session.setAttribute("img", vo.getImg());
			//���ڵ� �߰� ����
			String msg = "<script>alert('�������� �����Ǿ����ϴ�'); location.href='/myapp/';</script>";
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			//���ڵ� �߰� ����
			fileDelete(path, vo.getImg());
			
			//���� �޼���
			String msg = "<script>alert('������ ������ �����Ͽ����ϴ�'); history.back();</script>";

			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			}
		return entity;
	}
	
	//���� �����
	public void fileDelete(String p, String f) {
		if(f != null) {//���ϸ��� �����ϸ� 
			File file = new File(p,f);
			file.delete();
		}
	}
	// ���̵� �ߺ��˻�
	@PostMapping("memberIdCheck")
	public int inCheck(String userid) {
		int cnt = service.idCheck(userid);// �ߺ��̸�1 �ƴ�0 ����
		return cnt;
	}

}
