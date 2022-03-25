package com.campus.myapp.service;

import java.util.List;

import javax.inject.Inject;
import javax.xml.crypto.Data;

import org.springframework.stereotype.Service;

import com.campus.myapp.dao.WebDAO;
import com.campus.myapp.vo.DataVO;

@Service
public class WebServiceImpl implements WebService {
	@Inject
	WebDAO dao;

	@Override
	public List<DataVO> dataSelectAll(String city) {
		// TODO Auto-generated method stub
		return dao.dataSelectAll(city);
	}

	@Override
	public List<DataVO> seoultower(String city) {
		// TODO Auto-generated method stub
		return dao.seoultower(city);
	}

	@Override
	public List<DataVO> gyeongbokgung(String city) {
		// TODO Auto-generated method stub
		return dao.gyeongbokgung(city);
	}

	@Override
	public List<DataVO> seoulforest(String city) {
		// TODO Auto-generated method stub
		return dao.seoulforest(city);
	}

	@Override
	public List<DataVO> childrengrandpark(String city) {
		// TODO Auto-generated method stub
		return dao.childrengrandpark(city);
	}

	@Override
	public List<DataVO> deoksugung(String city) {
		// TODO Auto-generated method stub
		return dao.deoksugung(city);
	}

	@Override
	public int reviewInsert(DataVO vo) {
		// TODO Auto-generated method stub
		return dao.reviewInsert(vo);
	}

	@Override
	public List<DataVO> Haeundae(String city) {
		// TODO Auto-generated method stub
		return dao.Haeundae(city);
	}

	@Override
	public List<DataVO> Internationalmarket(String city) {
		// TODO Auto-generated method stub
		return dao.Internationalmarket(city);
	}

	@Override
	public List<DataVO> YongdusanPark(String city) {
		// TODO Auto-generated method stub
		return dao.YongdusanPark(city);
	}


	

	

	
	
}
