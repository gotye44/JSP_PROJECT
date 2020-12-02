package com.dm.action.common;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dm.action.Action;
import com.dm.dto.MenuVO;
import com.dm.service.MenuService;

public class MainAction implements Action{

	private MenuService menuService;
	
	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/common/main"; 
		
		String mCode = request.getParameter("mCode");
		
		if(mCode == null) mCode = "M01";
		
		List<MenuVO> menuList;
		try {
			menuList = menuService.getMainMenuList();
			MenuVO menu = menuService.getMenuByMcode(mCode);
			
			request.setAttribute("menuList", menuList);
			request.setAttribute("menu", menu);
		} catch (SQLException e) {
			e.printStackTrace();
			url = null;
		}
		return url;
	}

}
