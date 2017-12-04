package hufs.green.dao;

import java.util.List;

import hufs.green.dto.MemberDTO;

public interface MemberDAO {
	/**
	 * 멤버 가져오기
	 * @param member
	 * @return
	 */
	MemberDTO selectMember(MemberDTO member);
	/**
	 * 이메일 중복체크
	 * @param email
	 * @return
	 */
	MemberDTO selectMemberByEmail(String email);
	/**
	 * 회원 가입
	 * @param member
	 * @return
	 */
	int insertMember(MemberDTO member);
	
	/**
	 * 권한 가져오기
	 * @param member
	 * @return
	 */
	List<MemberDTO> selectMemberRole(MemberDTO member);
	
	/**
	 * 초기 회원가입시 권한 삽입
	 * @param member
	 * @return
	 */
	int insertMemberRole(MemberDTO member);
}
