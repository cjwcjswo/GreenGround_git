package hufs.green.service;

import java.util.List;

import hufs.green.dto.GroupDTO;

public interface GroupService {
	/**
	 * 그룹 만들기
	 * @param group
	 * @return
	 */
	int insertGroup(GroupDTO group);
	/**
	 * 해당하는 이메일의 그룹정보 가져오기
	 * @param email
	 * @return
	 */
	List<GroupDTO> selectGroupInfoByEmail(String email);
}
