package site.metacoding.miniproject.web;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.web.dto.response.ResponseDto;

@Controller
@RequiredArgsConstructor
public class AlarmController {

	@MessageMapping("/Personal/{userId}")
	@SendTo("/topic/Personal")
	public @ResponseBody ResponseDto<?> messageTestPersonal(Integer userid) {
		
		return new ResponseDto<>(1, "통신성공", null);
	}

	@MessageMapping("/Company")
	@SendTo("/topic/Company")
	public @ResponseBody ResponseDto<?> messageTestCompany(String test) {
		return new ResponseDto<>(1, "testconfirm", test);
	}
}
