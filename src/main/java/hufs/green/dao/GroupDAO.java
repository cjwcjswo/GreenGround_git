package hufs.green.dao;

import java.util.List;

import hufs.green.dto.GroupDTO;

public interface GroupDAO {
	/**
	 * 그룹 만들기
	 * @param group
	 * @return
	 */
	int insertGroup(GroupDTO group);
	
	/**
	 * 해당하는 이메일의 그룹 아이디 리스트 가져오기
	 * @param email
	 * @return
	 */
	List<String> selectGroupIdByEmail(String email);
	
	/**
	 * 그룹아이디로 그룹 가져오기
	 * @param groupId
	 * @return
	 */
	GroupDTO selectGroupById(String groupId);
}
