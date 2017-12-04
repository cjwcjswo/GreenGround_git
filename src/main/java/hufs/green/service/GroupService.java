package hufs.green.service;

import java.util.List;

import hufs.green.dto.GroupDTO;

public interface GroupService {
	/**
	 * �׷� �����
	 * @param group
	 * @return
	 */
	int insertGroup(GroupDTO group);
	/**
	 * �ش��ϴ� �̸����� �׷����� ��������
	 * @param email
	 * @return
	 */
	List<GroupDTO> selectGroupInfoByEmail(String email);
}
