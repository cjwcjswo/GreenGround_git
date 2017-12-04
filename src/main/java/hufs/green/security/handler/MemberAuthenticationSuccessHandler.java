package hufs.green.security.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import net.sf.json.JSONObject;
@Component
public class MemberAuthenticationSuccessHandler implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res, Authentication auth)
			throws IOException, ServletException {
		JSONObject obj = new JSONObject();

		obj.put("result", "success");

		res.setContentType("application/x-json; charset=UTF-8");
		res.getWriter().print(obj);
	}

	
	
}
