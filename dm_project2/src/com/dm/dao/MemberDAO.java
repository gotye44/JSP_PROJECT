package com.dm.dao;

import java.sql.SQLException;

import com.dm.dto.MemberVO;

public interface MemberDAO {
	
	MemberVO selectMemberById(String id) throws SQLException;

}
