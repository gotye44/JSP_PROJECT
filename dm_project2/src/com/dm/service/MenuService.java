package com.dm.service;

import java.sql.SQLException;
import java.util.List;

import com.dm.dto.MenuVO;

public interface MenuService {
	List<MenuVO> getAllMenu()throws SQLException;
	
	MenuVO getMenuByMcode(String mCode)throws SQLException;
}
