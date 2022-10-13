package site.metacoding.miniproject.config;

import java.util.Enumeration;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionIdListener;
import org.springframework.context.annotation.Configuration;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.web.dto.response.SignedDto;

@WebListener
@Configuration
@RequiredArgsConstructor
public class SessionConfig implements HttpSessionIdListener, HttpSessionAttributeListener{
	
	private final HttpSession session;
	
	public synchronized Integer getSessionIdCheck(String type, Integer usersId) {
		Integer result = null;
//		Enumeration<String> attribute = session.getAttributeNames();
//		while (attribute.hasMoreElements()) {
//			SignedDto<?> userinfo = (SignedDto)session.getAttribute(type);
//			String attr = (String) attribute.nextElement();
//			System.out.println(session);
//			System.out.println(attr);
//			System.out.println(userinfo);
//			if(userinfo != null  && userinfo.getUsersId() != null && userinfo.getUsersId().equals(usersId)) {
//				result = userinfo.getUsersId();
//				removeSessionForLoginOverlap(session.getAttribute(type).toString());
//				return result;
//			}
//		}
		return result;
	}

	@Override
	public void sessionIdChanged(HttpSessionEvent se, String oldSessionId) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void attributeAdded(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeAdded(se);
	}
	
	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeRemoved(se);
	}
	
	private void removeSessionForLoginOverlap(String sessionId) {
		if(sessionId != null && sessionId.length() > 0) {
			System.out.println(sessionId);
			//sessions.get(sessionId).invalidate();
		}
	}
	

}
