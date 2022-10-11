package site.metacoding.miniproject.web;

import java.net.http.WebSocket;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.socket.WebSocketSession;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AlarmController {

	@MessageMapping("/testPersonal")
	@SendTo("/topic/personal")
	public @ResponseBody String messageTestPersonal(WebSocketSession session) {
		System.out.println(session.getAttributes());
		return "hi";
	}

	@MessageMapping("/testCompany")
	@SendTo("/topic/company")
	public @ResponseBody String messageTestCompany(WebSocketSession session) {
		System.out.println(session.getAttributes());
		return "hi";
	}
}
