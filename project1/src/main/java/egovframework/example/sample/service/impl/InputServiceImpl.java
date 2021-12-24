package egovframework.example.sample.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.InputService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("inputService")
public class InputServiceImpl extends EgovAbstractServiceImpl implements InputService {
	@Resource(name = "inputDAO")
	private InputDAO inputDAO;
}