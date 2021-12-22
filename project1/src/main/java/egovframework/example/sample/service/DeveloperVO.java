package egovframework.example.sample.service;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DeveloperVO {
	private String dId;
	//사번
	private String dName;
	//개발자성명
	private String dTier;
	//등급(수준)
	private String dRole;
	//역할
	private String dJobgrade;
	//직급
	private String dType;
	//직원구분여부
	
	private int viewPage = 1;
	private int startIndex = 1;
	private int endIndex = 10;
	
}