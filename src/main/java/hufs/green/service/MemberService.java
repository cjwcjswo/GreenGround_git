package hufs.green.service;

import hufs.green.dto.MemberDTO;

public interface MemberService {
	/**
	 * 회원 가입
	 * @param member
	 * @return
	 */
	int insertMember(MemberDTO member);
}
