package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.DetailCodeVO;
import egovframework.example.sample.service.MasterCodeVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("codeDAO")
public class CodeDAO extends EgovAbstractDAO {

	public String insertMsCode(MasterCodeVO mvo) {

		return (String) insert("codeDAO.insertMsCode", mvo);
		
	}

	public String insertDtCode(DetailCodeVO dvo) {
		
		return (String) insert("codeDAO.insertDtCode", dvo);
	}

	public List<?> selectCodesList(MasterCodeVO mvo) {
		
		return list("codeDAO.selectCodesList",mvo);
		
	}
	
	public List<?> selectMsCodeList(MasterCodeVO mvo) {

		return list("codeDAO.selectMsCodeList",mvo);
	}	
	
	public List<?> selectDtCodeList(DetailCodeVO dvo) {

		return list("codeDAO.selectDtCodeList",dvo);
	}	

	public int selectCodesCount(MasterCodeVO mvo) {

		return (int) select("codeDAO.selectCodesCount",mvo);
		
	}





}
