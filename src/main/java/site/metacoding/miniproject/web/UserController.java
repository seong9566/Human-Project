package site.metacoding.miniproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.service.personal.PersonalService;
import site.metacoding.miniproject.web.dto.ResponseDto;
import site.metacoding.miniproject.web.dto.request.LoginDto;


@Controller
@RequiredArgsConstructor
public class UserController {
	
	private final PersonalService personalService;
	private final HttpSession session;
	
	@PostMapping("/login")
	public @ResponseBody ResponseDto<?> loginForm(@RequestBody LoginDto loginDto){
		

		Users userinfo = personalService.login(loginDto);
		session.setAttribute("principal", userinfo);
		if(userinfo == null)
			return new ResponseDto<>(-1,"로그인실패", null);
		
		return new ResponseDto<>(1, "로그인완료", session.getAttribute("principal"));
	}
	
	@GetMapping("/join")
	public String joinForm() {
		return null;
	}

}
