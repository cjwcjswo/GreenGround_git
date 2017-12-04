package hufs.green.dao;

import java.util.List;

import hufs.green.dto.MemberDTO;

public interface MemberDAO {
	/**
	 * ��� ��������
	 * @param member
	 * @return
	 */
	MemberDTO selectMember(MemberDTO member);
	/**
	 * �̸��� �ߺ�üũ
	 * @param email
	 * @return
	 */
	MemberDTO selectMemberByEmail(String email);
	/**
	 * ȸ�� ����
	 * @param member
	 * @return
	 */
	int insertMember(MemberDTO member);
	
	/**
	 * ���� ��������
	 * @param member
	 * @return
	 */
	List<MemberDTO> selectMemberRole(MemberDTO member);
	
	/**
	 * �ʱ� ȸ�����Խ� ���� ����
	 * @param member
	 * @return
	 */
	int insertMemberRole(MemberDTO member);
}
