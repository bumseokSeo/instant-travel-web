package com.campus.myapp.controller;

import java.io.File;
import java.nio.charset.Charset;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

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

import com.campus.myapp.service.WebService;
import com.campus.myapp.vo.DataVO;
import com.campus.myapp.vo.MemberVO;


@RestController
@RequestMapping("/web/")
public class WebController {
	@Inject
	WebService service;
	//����� �̵�
	@GetMapping("go")
	public ModelAndView seoul(String city,String location) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("lst", service.dataSelectAll(city));//���� ��ձ��ϱ�
		mav.addObject("seoultower",service.seoultower(city));//����Ÿ�� ����
		mav.addObject("gyeongbokgung", service.gyeongbokgung(city));//�溹������
		mav.addObject("seoulforest", service.seoulforest(city));//���｣ ����
		mav.addObject("childrengrandpark", service.childrengrandpark(city));//��̴���� ����
		mav.addObject("deoksugung", service.deoksugung(city));//������ ����
		
		//�λ�����
		mav.addObject("Haeundae",service.Haeundae(city));//�ؿ�� ����
		mav.addObject("Internationalmarket", service.Internationalmarket(city));//������������
		mav.addObject("YongdusanPark", service.YongdusanPark(city));//��λ���� ����
		
		
		
		mav.addObject("location",location);
		mav.setViewName("WEB/"+city);
		
		
		
		return mav;
	}
	//�λ����� �̵�
	/*
	@GetMapping("busan")
	public ModelAndView busan(String city,String location) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("lst", service.dataSelectAll(city));//���� ��ձ��ϱ�
		mav.addObject("Haeundae",service.Haeundae(city));//�ؿ�� ����
		mav.addObject("Internationalmarket", service.Internationalmarket(city));//������������
		mav.addObject("YongdusanPark", service.YongdusanPark(city));//��λ���� ����

		mav.addObject("location",location);
		mav.setViewName("WEB/"+city);
		return mav;
	}
	*/
	
	
	
	
	//�˻�
	//@GetMapping("search")
	//public 
	
	
	
	//���� �ۼ�
	@PostMapping("reviewOk")
	public ResponseEntity<String> memberEditOk(String location,String city, HttpServletRequest request,DataVO vo) {
		
		vo.setIp(request.getRemoteAddr());//������ ip
		vo.setUserid((String) request.getSession().getAttribute("logId"));//�������� ����num
		vo.setLocation(location);
		vo.setCity(city);
		System.out.println(location);
		System.out.println(city);
		
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
						
						vo.setReviewimg(orgFileName);
					}//if - 3
			}//if - 1
			System.out.println(vo.toString());
			//db���
			service.reviewInsert(vo);
			//���ڵ� �߰� ����
			String msg = "<script>alert('���䰡 ��ϵǾ����ϴ�.'); location.href='/myapp/web/go"+"?city="+city+"&location="+location+"';</script>";
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			//���ڵ� �߰� ����
			fileDelete(path, vo.getReviewimg());
			
			//���� �޼���
			String msg = "<script>alert('�����Ͽ� �����Ͽ����ϴ�.'); history.back();</script>";

			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			}
		return entity;
	}
	public void fileDelete(String p, String f) {
		if(f != null) {//���ϸ��� �����ϸ� 
			File file = new File(p,f);
			file.delete();
		}
	}
}
