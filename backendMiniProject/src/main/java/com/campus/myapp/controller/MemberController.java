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

//회원가입, 회원정보수정, 로그인, 로그아웃
@RestController
@RequestMapping("/member/")
public class MemberController {
	@Inject
	MemberService service;

	// 로그인창으로 이동
	@GetMapping("login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/login");
		return mav;
	}

	// 회원가입으로 이동
	@GetMapping("register")
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/register");
		return mav;

	}

	// 회원등록
	@PostMapping("memberOk")
	public ModelAndView memberFormOk(MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		// 회원등록
		int cnt = service.memberInsert(vo);
		// 클라이언트 페이지로 insert 결과를 보냄
		mav.addObject("cnt", cnt);
		mav.setViewName("member/memberResult");
		return mav;
	}

	// 로그인
	@PostMapping("loginOk")
	public ModelAndView loginOk(MemberVO vo, HttpSession session) {

		MemberVO vo2 = service.loginCheck(vo);

		ModelAndView mav = new ModelAndView();
		// 로그인 성공시 세션에 id와 이름 저장
		if (vo2 != null) {// 로그인 성공
			session.setAttribute("logId", vo2.getUserid());
			session.setAttribute("logName", vo2.getName());
			session.setAttribute("logNum", vo2.getNum());
			session.setAttribute("logStatus", "Y");
			session.setAttribute("img", vo2.getImg());
			mav.setViewName("redirect:/");// '/' <- 홈으로 이동
		} else {// 로그인 실패
			mav.setViewName("redirect:login");
		}
		return mav;
	}


	@GetMapping("logout")
	// 로그아웃
	public ModelAndView logout(HttpSession session) {
	
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}

	// 회원정보 수정진입
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
		// session의 로그인 아이디 확인
		
		vo.setUserid((String) request.getSession().getAttribute("logId"));
		
		ResponseEntity<String> entity = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(new MediaType("text","html",Charset.forName("UTF-8")));
		
		//파일 업로드를 위한 업로드 위치의 절대주소
		String path = request.getSession().getServletContext().getRealPath("/upload");
		System.out.println("path-->"+path);
		try {
			//파일업로드를 위한 request객체에서 multipart객체를 구해야 한다
			MultipartHttpServletRequest mr = (MultipartHttpServletRequest)request;
			
			//mr에 파일의 수만큼 multipartfile객체가 존재해야 함
			List<MultipartFile> files = mr.getFiles("imgName");
			
			
			if(files != null) {//if - 1
				
				
					//1.multipartfile객체 얻어오기
					MultipartFile mf = files.get(0);
					//2.업로드한 실제 파일명 구하기
					String orgFileName = mf.getOriginalFilename();
					System.out.println("orgFileName = " + orgFileName);
					
					//3.rename하기
					if(orgFileName != null && !orgFileName.equals("")) {//if - 3
						File f = new File(path, orgFileName);
						
						if(f.exists()) {//if - 4 파일 존재 여부
							for(int renameNum=1;;renameNum++) {// for - 5
								
								int point = orgFileName.lastIndexOf(".");
								String fileName = orgFileName.substring(0, point);//파일명
								String ext = orgFileName.substring(point+1);//확장자
								
								f = new File(path,fileName+" ("+renameNum+")."+ext);//새로운 파일명
								if(!f.exists()) {//if - 6   새로생성된 파일 객체가 없으면
									orgFileName = f.getName();
									break;
								}
							}// for - 5
						}//if - 4
						
						try {
							mf.transferTo(f);//실제 업로드가 진행
						} catch (Exception ee) {
							ee.printStackTrace();
						}
						
						vo.setImg(orgFileName);	
					}//if - 3
			}//if - 1
			System.out.println(vo.toString());
			//db등록
			service.memberUpdate(vo);
			session.setAttribute("logName", vo.getName());
			session.setAttribute("img", vo.getImg());
			//레코드 추가 성공
			String msg = "<script>alert('프로필이 수정되었습니다'); location.href='/myapp/';</script>";
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			//레코드 추가 실패
			fileDelete(path, vo.getImg());
			
			//실패 메세지
			String msg = "<script>alert('프로필 수정에 실패하였습니다'); history.back();</script>";

			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			}
		return entity;
	}
	
	//파일 지우기
	public void fileDelete(String p, String f) {
		if(f != null) {//파일명이 존재하면 
			File file = new File(p,f);
			file.delete();
		}
	}
	// 아이디 중복검사
	@PostMapping("memberIdCheck")
	public int inCheck(String userid) {
		int cnt = service.idCheck(userid);// 중복이면1 아님0 보냄
		return cnt;
	}

}
