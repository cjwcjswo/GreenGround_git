package hufs.green.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hufs.green.dao.GroupDAO;
import hufs.green.dto.GroupDTO;
import hufs.green.dto.MemberDTO;

@Service
public class GroupServiceImpl implements GroupService{
	@Autowired
	GroupDAO groupDAO;
	@Override
	public int insertGroup(GroupDTO group) {
		return groupDAO.insertGroup(group);
	}

	@Override
	public List<GroupDTO> selectGroupInfoByEmail(String email) {
		//해당하는 이메일의 그룹아이디 리스트 불러오기
		List<String> groupIdList = groupDAO.selectGroupIdByEmail(email);
		List<GroupDTO> groupList = new ArrayList<>();
		//그룹아이디로 그룹 정보리스트 가져오기
		for(String groupId : groupIdList){
			GroupDTO group = groupDAO.selectGroupById(groupId);
			String leaderEmail = group.getGroupLeader().getEmail();
			List<MemberDTO> groupMemberList = group.getMemberList();
			//그룹 멤버리스트와 리더의 이메일을 비교해 리더를 세팅
			for(MemberDTO groupMember : groupMemberList){
				if(groupMember.getEmail().equals(leaderEmail)){
					group.setGroupLeader(groupMember);
					break;
				}
			}
			groupList.add(group);
		}
		System.out.println("[그룹 리스트: ]" + groupList);
		return groupList;
	}

}
