package com.campus.myapp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//���ͼ�Ʈ�� ��Ʈ���ϴ� Ŭ����
public class LoginInterceptor extends HandlerInterceptorAdapter {
	//��Ʈ�ѷ��� ȣ��Ǳ� ���� ����� �޼ҵ�
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object handler) throws Exception{
		//false -> �α��� ��������
		//true -> ����ó��
		
		HttpSession session = request.getSession();//���ǰ�ü ������
		String logStatus = (String) session.getAttribute("logStatus");//�α��� ���� ���ϱ�
		
		if(logStatus!=null && logStatus.equals("Y")) {//�α����� �� ���
			return true;
		}else {
			response.sendRedirect(request.getContextPath()+"/member/login");
			return false;
		}
	}
}
