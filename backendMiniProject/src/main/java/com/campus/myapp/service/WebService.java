package com.campus.myapp.service;

import java.util.List;

import javax.xml.crypto.Data;

import com.campus.myapp.vo.DataVO;
import com.campus.myapp.vo.MemberVO;


public interface WebService {
	public List<DataVO> dataSelectAll(String city);
	public List<DataVO> seoultower(String city);
	public List<DataVO> gyeongbokgung(String city);
	public List<DataVO> seoulforest(String city);
	public List<DataVO> childrengrandpark(String city);
	public List<DataVO> deoksugung(String city);
	public int reviewInsert(DataVO vo);
	
	public List<DataVO> Haeundae(String city);
	public List<DataVO> Internationalmarket(String city);
	public List<DataVO> YongdusanPark(String city);
	
}
