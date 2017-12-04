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
 * 스프링 시큐리티 인증을 처리하는 Provider
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
		// 인증 처리를 할 수 없을 경우
		if(!supports(auth.getClass())){
			return null;
		}
		
		// 1. 인수로 받은 유저 정보를 가지고 디비에 존재하는지 체크
		
		String email = auth.getName();
		MemberDTO member = memberDAO.selectMemberByEmail(email);
		if(member==null){// id가 없는 경우 
			throw new UsernameNotFoundException("이메일 혹은 비밀번호를 확인하세요.");
		}
		// 2. 존재하면 비밀번호 비교
		String password = (String)auth.getCredentials();
		
		if(!passwordEncoder.matches(password, member.getPassword())){
			throw new BadCredentialsException("이메일 혹은 비밀번호를 확인하세요.");
		}
		
		////////////// 인증에 성공한 후 ./////////////////
		// 3. 모두 일치하면 Authentication를 만들어서 리턴 
		List<MemberDTO> authMemberList = memberDAO.selectMemberRole(member);
		if(authMemberList.isEmpty()){
			//아무 권한이 없는 경우
			throw new UsernameNotFoundException(email + "는 아무 권한이 없습니다.");
		}
		
		// db에서 가지고 온 권한을 GrantedAuthority로 변환 해야함
		List<SimpleGrantedAuthority> authList = new ArrayList<>();
		for(MemberDTO memberAuth : authMemberList){
			authList.add(new SimpleGrantedAuthority(memberAuth.getRole()));
		}
		return new UsernamePasswordAuthenticationToken(member, null, authList);
	}

	/**
	 * 해당 타입의 authentication 객체를 이용해서 인증 처리를 할 수 있는지 여부를 리턴해주는 메소드
	 * */
	@Override
	public boolean supports(Class<?> authentication) {
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}

}
