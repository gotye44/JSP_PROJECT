package com.dm.action.rent;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dm.action.Action;
import com.dm.request.SearchCriteria;
import com.dm.service.RentService;

public class RentListAction implements Action{

	private RentService rentService;
	
	public void setRentService(RentService rentService) {
		this.rentService = rentService;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/rent/list";
		
//		String dist = request.getParameter("dist");
//		String page = request.getParameter("page");
//		String perPageNum = request.getParameter("perPageNum");
//		String searchType = request.getParameter("searchType");
//		String keyword = request.getParameter("keyword");
//		
//		System.out.println(page + perPageNum + searchType + keyword);
//		SearchCriteria cri = new SearchCriteria(page, perPageNum, searchType, keyword);
//		
//		Map<String, Object> dataMap = null;
//		
//		try {
//			if(dist.equals("melon")) {
//				dataMap = rentService.getRentListMelon(cri);
//			}else if(dist.equals("genie")) {
//				
//			}
//			request.setAttribute("dataMap", dataMap);
//			request.setAttribute("dist", dist);
//		} catch (SQLException e) {
//			e.printStackTrace();
//			url = null;
//		}
		return url;
	}

}
