package site.metacoding.miniproject.config;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.context.annotation.Configuration;

import site.metacoding.miniproject.domain.users.Users;

@WebListener
public class SessionConfig implements HttpSessionListener, HttpSessionAttributeListener{
	
    private static final Map<String, HttpSession> sessions = new ConcurrentHashMap<>();

    //중복로그인 지우기
    public synchronized static String getSessionidCheck(String type, Integer id){
        String result = null;
        System.out.println(sessions);
        for( String key : sessions.keySet() ){
            HttpSession value = sessions.get(key);
            Users userinfo = (Users)value.getAttribute(type);
            System.out.println(userinfo);
//            if(value != null &&  userinfo != null && userinfo.getUsersId().equals(id) ){
//                //System.out.println(value.getAttribute(type).toString());
//                result =  key;
//            	removeSessionForDoubleLogin(result);
//            }
        }
        return result;
    }
    
    private static void removeSessionForDoubleLogin(String userId){    	
        System.out.println("remove userId : " + userId);
        if(userId != null && userId.length() > 0){
            sessions.get(userId).invalidate();
            sessions.remove(userId);    		
        }
    }

    @Override
    public void sessionCreated(HttpSessionEvent hse) {
        System.out.println(hse);
        sessions.put(hse.getSession().getId(), hse.getSession());
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent hse) {
        if(sessions.get(hse.getSession().getId()) != null){
            sessions.get(hse.getSession().getId()).invalidate();
            sessions.remove(hse.getSession().getId());	
        }
    }
}   
