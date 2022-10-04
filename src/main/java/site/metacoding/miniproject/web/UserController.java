package site.metacoding.miniproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.Users.UsersService;
import site.metacoding.miniproject.web.dto.ResponseDto;
import site.metacoding.miniproject.web.dto.request.LoginDto;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;
import site.metacoding.miniproject.web.dto.response.SignedDto;


@Controller
@RequiredArgsConstructor
public class UserController {
	
	private final UsersService userService;
	private final HttpSession session;
	
	@PostMapping("/login")
	public @ResponseBody ResponseDto<?> loginForm(@RequestBody LoginDto loginDto){
		
		SignedDto<?> signedDto = userService.login(loginDto);
		if(signedDto == null)
			return new ResponseDto<>(-1,"로그인실패", null);
		
		session.setAttribute("principal", signedDto);
		return new ResponseDto<>(1, "로그인완료", session.getAttribute("principal"));
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "users/joinForm";
	}
	
	@PostMapping("/join/personal")
	public @ResponseBody ResponseDto<?> joinPersonal(@RequestBody PersonalJoinDto joinDto){
		System.out.println(joinDto.getLoginId());
		System.out.println(joinDto.getPersonalName());
		System.out.println(joinDto.getLoginPassword());
		System.out.println(joinDto.getPersonalPhoneNumber());
		return null;
	}
	
	@PostMapping("/join/company")
	public @ResponseBody ResponseDto<?> joinCompany(@RequestBody String join){
		return null;
	}

}
