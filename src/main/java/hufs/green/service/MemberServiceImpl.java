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
		//����� �̸����� �ߺ����� üũ
		MemberDTO memberResult = memberDAO.selectMemberByEmail(member.getEmail());
		if(memberResult != null){ // �ߺ� �� ���
			return result;
		}else{
	
			// ��й�ȣ ���ڵ�
			member.setPassword(passwordEncoder.encode(member.getPassword()));
			member.setRole(Constants.ROLE_MEMBER);
			result = memberDAO.insertMember(member); // ��� DB�� ����
			memberDAO.insertMemberRole(member); // ��� ���� ����
			
		}
		System.out.println("[ȸ������ ���]: " + result);
		return result;
	}

}
