package hufs.green.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hufs.green.dao.MemberDAO;
import hufs.green.dto.MemberDTO;
import hufs.green.util.Constants;

@Service
@Transactional
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	@Override
	public int insertMember(MemberDTO member) {
		int result = 0;
		//멤버의 이메일이 중복인지 체크
		MemberDTO memberResult = memberDAO.selectMemberByEmail(member.getEmail());
		if(memberResult != null){ // 중복 일 경우
			return result;
		}else{
	
			// 비밀번호 인코딩
			member.setPassword(passwordEncoder.encode(member.getPassword()));
			member.setRole(Constants.ROLE_MEMBER);
			result = memberDAO.insertMember(member); // 멤버 DB에 삽입
			memberDAO.insertMemberRole(member); // 멤버 권한 삽입
			
		}
		System.out.println("[회원가입 결과]: " + result);
		return result;
	}

}
