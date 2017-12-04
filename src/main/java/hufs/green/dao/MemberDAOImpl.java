package hufs.green.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hufs.green.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public MemberDTO selectMember(MemberDTO member) {
		return sqlSession.selectOne("mapper.memberMapper.selectMember", member);
	}

	@Override
	public int insertMember(MemberDTO member) {
		return sqlSession.insert("mapper.memberMapper.insertMember", member);
	}

	@Override
	public List<MemberDTO> selectMemberRole(MemberDTO member) {
		return sqlSession.selectList("mapper.memberMapper.selectMemberRole", member);
	}

	@Override
	public int insertMemberRole(MemberDTO member) {
		return sqlSession.insert("mapper.memberMapper.insertMemberRole", member);
	}

	@Override
	public MemberDTO selectMemberByEmail(String email) {
		return sqlSession.selectOne("mapper.memberMapper.selectMemberByEmail", email);
	}

}
