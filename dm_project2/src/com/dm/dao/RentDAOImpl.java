package com.dm.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.dm.dto.RentVO;
import com.dm.request.SearchCriteria;

public class RentDAOImpl implements RentDAO{

private SqlSessionFactory sqlSessionFactory;
	
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<RentVO> selectSearchRentListMelon(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		int offset = cri.getPageStartRowNum();
		int limit = cri.getPerPageNum();
		System.out.println(offset + "----" + limit);
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<RentVO> rentList = session.selectList("Rent-Mapper.selectSearchRentListMelon",cri, rowBounds);
		session.close();
		return rentList;
	}

	@Override
	public int selectSearchRentListMelonCount(SearchCriteria cri) throws SQLException {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int count = sqlSession.selectOne("Rent-Mapper.selectSearchRentListMelonCount", cri);
		sqlSession.close();
		return count;
	}

}
