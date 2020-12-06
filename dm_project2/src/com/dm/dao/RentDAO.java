package com.dm.dao;

import java.sql.SQLException;
import java.util.List;

import com.dm.dto.RentVO;
import com.dm.request.SearchCriteria;

public interface RentDAO {
	List<RentVO> selectSearchRentListMelon(SearchCriteria cri) throws SQLException;
	int selectSearchRentListMelonCount(SearchCriteria cri) throws SQLException;
}
