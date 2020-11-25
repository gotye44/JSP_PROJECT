package com.dm.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.dm.dao.MemberDAO;
import com.dm.dto.MemberVO;
import com.dm.exception.InvalidPasswordException;
import com.dm.exception.NotFoundIDException;

public class MemberServiceImpl implements MemberService{

	private MemberDAO memberDAO;
	
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	@Override
	public MemberVO getMember(String id) throws SQLException {
		return memberDAO.selectMemberById(id);
	}
	@Override
	public void login(String id, String pwd, HttpSession session)
			throws SQLException, NotFoundIDException, InvalidPasswordException {
		MemberVO member = memberDAO.selectMemberById(id);
		if(member == null) {
			throw new NotFoundIDException();
		}
		if(!pwd.equals(member.getPwd())) {
			throw new InvalidPasswordException();
		}
		
		session.setAttribute("loginUser", member);
		session.setMaxInactiveInterval(6*60);
	}

}
