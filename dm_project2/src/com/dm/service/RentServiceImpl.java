package com.dm.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dm.dao.RentDAO;
import com.dm.dto.RentVO;
import com.dm.request.PageMaker;
import com.dm.request.SearchCriteria;

public class RentServiceImpl implements RentService{
	
	private RentDAO rentDAO;
	
	public void setRentDAO(RentDAO rentDAO) {
		this.rentDAO = rentDAO;
	}

	@Override
	public Map<String, Object> getRentListMelon(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<>();
		
		List<RentVO> rentList = rentDAO.selectSearchRentListMelon(cri);

		int totalCount = rentDAO.selectSearchRentListMelonCount(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("rentList", rentList);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}


}
