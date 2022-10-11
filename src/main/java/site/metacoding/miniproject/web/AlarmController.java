package site.metacoding.miniproject.web;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AlarmController {

	@MessageMapping("/testPersonal")
	@SendTo("/topic/personal")
	public @ResponseBody String messageTestPersonal(@RequestBody String user) {
		System.out.println("======================");
		System.out.println(user);
		System.out.println("======================");
		return user;
	}

	@MessageMapping("/testCompany")
	@SendTo("/topic/company")
	public @ResponseBody String messageTestCompany(@RequestBody String user) {
		System.out.println("======================");
		System.out.println(user);
		System.out.println("======================");
		return user;
	}
}
