package hufs.green.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import hufs.green.dto.MemberDTO;
import hufs.green.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberService memberService;
	
	/**
	 * 회원가입 처리
	 * @param member
	 * @return
	 */
	@RequestMapping("/signUp")
	@ResponseBody
	public int signUp(MemberDTO member){
		int result = memberService.insertMember(member);
		return result;
	}
	
}
