package hufs.green.service;

import hufs.green.dto.MemberDTO;

public interface MemberService {
	/**
	 * ȸ�� ����
	 * @param member
	 * @return
	 */
	int insertMember(MemberDTO member);
}
