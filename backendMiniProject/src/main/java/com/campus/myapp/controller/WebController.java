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
	//서울로 이동
	@GetMapping("go")
	public ModelAndView seoul(String city,String location) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("lst", service.dataSelectAll(city));//리뷰 평균구하기
		mav.addObject("seoultower",service.seoultower(city));//남산타워 정보
		mav.addObject("gyeongbokgung", service.gyeongbokgung(city));//경복궁정보
		mav.addObject("seoulforest", service.seoulforest(city));//서울숲 정보
		mav.addObject("childrengrandpark", service.childrengrandpark(city));//어린이대공원 정보
		mav.addObject("deoksugung", service.deoksugung(city));//덕수궁 정보
		
		//부산정보
		mav.addObject("Haeundae",service.Haeundae(city));//해운대 정보
		mav.addObject("Internationalmarket", service.Internationalmarket(city));//국제시장정보
		mav.addObject("YongdusanPark", service.YongdusanPark(city));//용두산공원 정보
		
		
		
		mav.addObject("location",location);
		mav.setViewName("WEB/"+city);
		
		
		
		return mav;
	}
	//부산으로 이동
	/*
	@GetMapping("busan")
	public ModelAndView busan(String city,String location) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("lst", service.dataSelectAll(city));//리뷰 평균구하기
		mav.addObject("Haeundae",service.Haeundae(city));//해운대 정보
		mav.addObject("Internationalmarket", service.Internationalmarket(city));//국제시장정보
		mav.addObject("YongdusanPark", service.YongdusanPark(city));//용두산공원 정보

		mav.addObject("location",location);
		mav.setViewName("WEB/"+city);
		return mav;
	}
	*/
	
	
	
	
	//검색
	//@GetMapping("search")
	//public 
	
	
	
	//리뷰 작성
	@PostMapping("reviewOk")
	public ResponseEntity<String> memberEditOk(String location,String city, HttpServletRequest request,DataVO vo) {
		
		vo.setIp(request.getRemoteAddr());//접속자 ip
		vo.setUserid((String) request.getSession().getAttribute("logId"));//접속자의 고유num
		vo.setLocation(location);
		vo.setCity(city);
		System.out.println(location);
		System.out.println(city);
		
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
						
						vo.setReviewimg(orgFileName);
					}//if - 3
			}//if - 1
			System.out.println(vo.toString());
			//db등록
			service.reviewInsert(vo);
			//레코드 추가 성공
			String msg = "<script>alert('리뷰가 등록되었습니다.'); location.href='/myapp/web/go"+"?city="+city+"&location="+location+"';</script>";
			entity = new ResponseEntity<String>(msg, headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			//레코드 추가 실패
			fileDelete(path, vo.getReviewimg());
			
			//실패 메세지
			String msg = "<script>alert('리뷰등록에 실패하였습니다.'); history.back();</script>";

			entity = new ResponseEntity<String>(msg,headers,HttpStatus.BAD_REQUEST);
			}
		return entity;
	}
	public void fileDelete(String p, String f) {
		if(f != null) {//파일명이 존재하면 
			File file = new File(p,f);
			file.delete();
		}
	}
}
