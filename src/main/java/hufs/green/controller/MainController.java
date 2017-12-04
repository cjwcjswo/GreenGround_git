package hufs.green.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hufs.green.dto.GroupDTO;
import hufs.green.dto.MemberDTO;
import hufs.green.service.GroupService;
import hufs.green.util.PrincipalConverter;

@Controller
public class MainController {
	@Autowired
	PrincipalConverter principalConverter;
	@Autowired
	GroupService groupService;

	/**
	 * 로그인 후 메인화면 진입
	 * 
	 * @return
	 */
	@RequestMapping("/main")
	public ModelAndView main(Principal principal) {
		ModelAndView mv = new ModelAndView();
		MemberDTO currentMember = principalConverter.convertToMemberDTO(principal.getName());
		List<GroupDTO> groupList = groupService.selectGroupInfoByEmail(currentMember.getEmail());
		mv.setViewName("main/home");
		mv.addObject("groupList", groupList);
		return mv;
	}
}
