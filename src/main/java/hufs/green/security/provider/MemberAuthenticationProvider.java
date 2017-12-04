package hufs.green.security.provider;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import hufs.green.dao.MemberDAO;
import hufs.green.dto.MemberDTO;

/**
 * ������ ��ť��Ƽ ������ ó���ϴ� Provider
 */
@Service //id="memberAuthenticationProvider"
public class MemberAuthenticationProvider implements AuthenticationProvider{
		
	@Autowired
	private MemberDAO memberDAO;
	

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public Authentication authenticate(Authentication auth) throws AuthenticationException {
		System.out.println(auth);
		// ���� ó���� �� �� ���� ���
		if(!supports(auth.getClass())){
			return null;
		}
		
		// 1. �μ��� ���� ���� ������ ������ ��� �����ϴ��� üũ
		
		String email = auth.getName();
		MemberDTO member = memberDAO.selectMemberByEmail(email);
		if(member==null){// id�� ���� ��� 
			throw new UsernameNotFoundException("�̸��� Ȥ�� ��й�ȣ�� Ȯ���ϼ���.");
		}
		// 2. �����ϸ� ��й�ȣ ��
		String password = (String)auth.getCredentials();
		
		if(!passwordEncoder.matches(password, member.getPassword())){
			throw new BadCredentialsException("�̸��� Ȥ�� ��й�ȣ�� Ȯ���ϼ���.");
		}
		
		////////////// ������ ������ �� ./////////////////
		// 3. ��� ��ġ�ϸ� Authentication�� ���� ���� 
		List<MemberDTO> authMemberList = memberDAO.selectMemberRole(member);
		if(authMemberList.isEmpty()){
			//�ƹ� ������ ���� ���
			throw new UsernameNotFoundException(email + "�� �ƹ� ������ �����ϴ�.");
		}
		
		// db���� ������ �� ������ GrantedAuthority�� ��ȯ �ؾ���
		List<SimpleGrantedAuthority> authList = new ArrayList<>();
		for(MemberDTO memberAuth : authMemberList){
			authList.add(new SimpleGrantedAuthority(memberAuth.getRole()));
		}
		return new UsernamePasswordAuthenticationToken(member, null, authList);
	}

	/**
	 * �ش� Ÿ���� authentication ��ü�� �̿��ؼ� ���� ó���� �� �� �ִ��� ���θ� �������ִ� �޼ҵ�
	 * */
	@Override
	public boolean supports(Class<?> authentication) {
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}

}
