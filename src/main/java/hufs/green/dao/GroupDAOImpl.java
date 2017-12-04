package hufs.green.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hufs.green.dto.GroupDTO;

@Repository
public class GroupDAOImpl implements GroupDAO{
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insertGroup(GroupDTO group) {
		return sqlSession.insert("mapper.groupMapper.insertGroup", group);
	}

	@Override
	public List<String> selectGroupIdByEmail(String email) {
		return sqlSession.selectList("mapper.groupMapper.selectGroupIdByEmail", email);
	}

	@Override
	public GroupDTO selectGroupById(String groupId) {
		return sqlSession.selectOne("mapper.groupMapper.selectGroupById", groupId);
	}

}
