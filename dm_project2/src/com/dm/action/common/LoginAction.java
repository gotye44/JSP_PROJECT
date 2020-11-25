package com.dm.action.common;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dm.action.Action;
import com.dm.exception.InvalidPasswordException;
import com.dm.exception.NotFoundIDException;
import com.dm.service.MemberService;

public class LoginAction implements Action{

	private MemberService memberService;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "re:/main.do";
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		try {
			memberService.login(id, pwd, request.getSession());
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NotFoundIDException | InvalidPasswordException e) {
			url = "re:/";
			request.getSession().setAttribute("msg", e.getMessage());
		} 
		return url;
	}

}
