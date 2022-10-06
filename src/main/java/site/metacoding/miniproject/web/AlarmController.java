package site.metacoding.miniproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.users.Users;

@Controller
@RequiredArgsConstructor
public class AlarmController {
	private final HttpSession session;

	@MessageMapping("/testPersonal")
	@SendTo("/topic/personal")
	public @ResponseBody String messageTestPersonal() {
		Users user = (Users) session.getAttribute("principal");
		System.out.println("======================");
		System.out.println(user.getLoginId());
		System.out.println("======================");
		return user.getLoginId();
	}

	@MessageMapping("/testCompany")
	@SendTo("/topic/company")
	public @ResponseBody String messageTestCompany() {
		Users user = (Users) session.getAttribute("principal");
		System.out.println("======================");
		System.out.println(user.getLoginId());
		System.out.println("======================");
		return user.getLoginId();
	}
}
