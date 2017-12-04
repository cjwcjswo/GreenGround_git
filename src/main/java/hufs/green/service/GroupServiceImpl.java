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
		//�ش��ϴ� �̸����� �׷���̵� ����Ʈ �ҷ�����
		List<String> groupIdList = groupDAO.selectGroupIdByEmail(email);
		List<GroupDTO> groupList = new ArrayList<>();
		//�׷���̵�� �׷� ��������Ʈ ��������
		for(String groupId : groupIdList){
			GroupDTO group = groupDAO.selectGroupById(groupId);
			String leaderEmail = group.getGroupLeader().getEmail();
			List<MemberDTO> groupMemberList = group.getMemberList();
			//�׷� �������Ʈ�� ������ �̸����� ���� ������ ����
			for(MemberDTO groupMember : groupMemberList){
				if(groupMember.getEmail().equals(leaderEmail)){
					group.setGroupLeader(groupMember);
					break;
				}
			}
			groupList.add(group);
		}
		System.out.println("[�׷� ����Ʈ: ]" + groupList);
		return groupList;
	}

}
