package com.dm.service;

import java.sql.SQLException;
import java.util.List;

import com.dm.dao.MenuDAO;
import com.dm.dto.MenuVO;

public class MenuServiceImpl implements MenuService{

	private MenuDAO menuDAO;
	
	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}

	@Override
	public MenuVO getMenuByMcode(String mCode) throws SQLException {
		return null;
	}

	@Override
	public List<MenuVO> getAllMenu() throws SQLException {
		
		List<MenuVO> mainMenus = menuDAO.selectMainMenu();
		
		for(MenuVO menu : mainMenus) {
			List<MenuVO> subMenus = menuDAO.selectSubMenu(menu.getMcode());
			menu.setSubMenuList(subMenus);
		}
		return mainMenus;
	}

}
