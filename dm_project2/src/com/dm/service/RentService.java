package com.dm.service;

import java.sql.SQLException;
import java.util.Map;

import com.dm.request.SearchCriteria;

public interface RentService {
	Map<String, Object> getRentListMelon(SearchCriteria cri)throws SQLException;
}
