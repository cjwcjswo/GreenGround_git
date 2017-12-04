package hufs.green.dao;

import java.util.List;

import hufs.green.dto.GroupDTO;

public interface GroupDAO {
	/**
	 * �׷� �����
	 * @param group
	 * @return
	 */
	int insertGroup(GroupDTO group);
	
	/**
	 * �ش��ϴ� �̸����� �׷� ���̵� ����Ʈ ��������
	 * @param email
	 * @return
	 */
	List<String> selectGroupIdByEmail(String email);
	
	/**
	 * �׷���̵�� �׷� ��������
	 * @param groupId
	 * @return
	 */
	GroupDTO selectGroupById(String groupId);
}
