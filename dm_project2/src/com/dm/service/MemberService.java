package com.dm.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.dm.dto.MemberVO;
import com.dm.exception.InvalidPasswordException;
import com.dm.exception.NotFoundIDException;

public interface MemberService {
	
	// 회원정보 조회
	MemberVO getMember(String id) throws SQLException;
	
	void login(String id, String pwd,HttpSession session) throws SQLException, NotFoundIDException, InvalidPasswordException;
}
