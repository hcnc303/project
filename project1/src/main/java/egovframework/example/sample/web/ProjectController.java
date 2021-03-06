package egovframework.example.sample.web;

import java.util.List;
/*import java.util.logging.Logger;*/

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

import egovframework.example.sample.service.DtCateVO;
import egovframework.example.sample.service.ProjectService;
import egovframework.example.sample.service.ProjectVO;
@Controller
public class ProjectController {
	
	/*private final static Logger LOGGER = Logger.getGlobal();*/
	
	@Resource(name="projectService")
	private ProjectService projectService;
	
	@RequestMapping(value="/projectWrite.do")
	public String projectWrite(DtCateVO dVo, ModelMap model) throws Exception{
		ObjectMapper objm = new ObjectMapper();
		List<?> list = projectService.selectBuCateList(dVo);
		List<?> loList = projectService.selectLoCateList(dVo);
		List<?> poList = projectService.selectPoCateList(dVo);
		String cateList = objm.writeValueAsString(list);
		String loCateList = objm.writeValueAsString(loList);
		String poCateList = objm.writeValueAsString(poList);
		
		model.addAttribute("cateList", cateList);
		model.addAttribute("loCateList", loCateList);
		model.addAttribute("poCateList", poCateList);
		
		return "project/projectWrite";
		
	}
	
	@RequestMapping(value="/projectWriteSave.do")
	public String insertProject(ProjectVO vo) throws Exception {
		
		String result = projectService.insertProject(vo);
		
		if( result == null) {
			System.out.println("저장완료");
		}
		
		
		return "redirect:projectList.do";
	}
	
	@RequestMapping(value="/projectList.do")
	public String selectProjectList(ProjectVO vo, ModelMap model) throws Exception{
		
		List<?> list = projectService.selectProjectList(vo);
		
		/*System.out.println(list);*/
		model.addAttribute("resultList", list);
		return "project/projectList";
	}
	
	@RequestMapping(value="/projectDetail.do")
	public String selectProjectDetail(String p_id, ModelMap model) throws Exception{
		 
		ProjectVO vo = projectService.selectProjectDetail(p_id);
		/*System.out.println("프로젝트번호:"+vo.getP_id());*/
		
		model.addAttribute("projectVO",vo);
		
		return "project/projectDetail";
	}
	
	@RequestMapping(value="/projectDelete.do")
	public String deleteProject(String p_id) throws Exception{
		
		int result = projectService.deleteProject(p_id);
		if(result == 1) {
			System.out.println("삭제완료");
		} else {
			System.out.println("삭제실패");
		}
		
		return "redirect:/projectList.do";
	}
	
	@RequestMapping(value="/projectModifyWrite.do")
	public String selectProjectModify(String p_id, DtCateVO dVo, ModelMap model) throws Exception{
		
		ObjectMapper objm = new ObjectMapper();
		List<?> cateList = projectService.selectBuCateList(dVo);
		List<?> loCateList = projectService.selectLoCateList(dVo);
		List<?> poCateList = projectService.selectPoCateList(dVo);
		//String cateList = objm.writeValueAsString(list);
		
		ProjectVO vo = projectService.selectProjectDetail(p_id);
		model.addAttribute("vo", vo);
		model.addAttribute("cateList", cateList);
		model.addAttribute("loCateList", loCateList);
		model.addAttribute("poCateList", poCateList);
		
		return "project/projectModify";
	}
	
	@RequestMapping(value="/projectModifySave.do")
	public String updateProject(ProjectVO vo) throws Exception{
		
		int result = projectService.updateProject(vo);
		if(result == 1) {
			System.out.println("수정완료");
		} else {
			System.out.println("수정실패");
		}
		
		return "redirect:/projectList.do";
	}
	
}
