package hufs.green.security.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import net.sf.json.JSONObject;


/**
 * 스프링 시큐리티에서 로그인 실패시 호출되는 EventHandler
 * springBean 설정문서에서
 *  security:form-login 태그에 authentication-failure-handler-ref 추가하면
 * 로그인 실패시 onAuthenticationFailure 메소드 자동 호출
 * */
@Component //id="memberAuthenticationFailureHandler"
public class MemberAuthenticationFailureHandler implements AuthenticationFailureHandler{

	@Override
	public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse res, AuthenticationException auth)
			throws IOException, ServletException {
		// return type은 json으로

		JSONObject obj = new JSONObject();

		obj.put("result", auth.getMessage());

		res.setContentType("application/x-json; charset=UTF-8");
		res.getWriter().print(obj);

		
	}

	
	
}
