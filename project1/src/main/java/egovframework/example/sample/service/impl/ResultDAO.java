package egovframework.example.sample.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.InputVO;
import egovframework.example.sample.service.ResultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("resultDAO")
public class ResultDAO extends EgovAbstractDAO {
	public InputVO selectResultDetail(String p_id, String d_id) {
		
		Map map = new HashMap();
			map.put("p_id", p_id);
			map.put("d_id", d_id);
		
		
		return (InputVO) select("resultDAO.selectResultDetail",map);
		
	}

	public String insertResult(ResultVO rvo) {

		return (String) insert("resultDAO.insertResult",rvo);
	}



}
