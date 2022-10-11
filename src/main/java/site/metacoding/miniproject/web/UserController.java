package site.metacoding.miniproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.Users.UsersService;
import site.metacoding.miniproject.web.dto.request.CompanyJoinDto;
import site.metacoding.miniproject.web.dto.request.LoginDto;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;
import site.metacoding.miniproject.web.dto.response.ResponseDto;
import site.metacoding.miniproject.web.dto.response.SignedDto;

@Controller
@RequiredArgsConstructor
public class UserController {

	private final UsersService userService;
	private final HttpSession session;

	@GetMapping("/main")
	public String mainForm() {
		return "/company/main";
	}

	@GetMapping("/loginForm")
	public String loginForm() {
		return "/company/login";
	}
	@GetMapping("/logout")
	public String logout() {
		session.invalidate();
		return "/company/main";
	}

	@PostMapping("/login")
	public @ResponseBody ResponseDto<?> login(@RequestBody LoginDto loginDto) {
		SignedDto<?> signedDto = userService.login(loginDto);
		if (signedDto == null)
			return new ResponseDto<>(-1, "로그인실패", null);
		session.setAttribute("principal", signedDto);
		return new ResponseDto<>(1, "로그인완료", session.getAttribute("principal"));
	}

	@GetMapping("/joinForm")
	public String joinForm() {
		return "users/joinForm";
	}

	@PostMapping("/join/personal")
	public @ResponseBody ResponseDto<?> joinPersonal(@RequestBody PersonalJoinDto joinDto) {
		userService.joinPersonal(joinDto);
		LoginDto loginDto = new LoginDto(joinDto);
		SignedDto<?> signedDto = userService.login(loginDto);
		session.setAttribute("principal", signedDto);
		return new ResponseDto<>(1, "계정생성완료", session.getAttribute("principal"));
	}

	@PostMapping("/join/company")
	public @ResponseBody ResponseDto<?> joinCompany(@RequestBody CompanyJoinDto joinDto) {
		userService.joinCompany(joinDto);
		LoginDto loginDto = new LoginDto(joinDto);
		SignedDto<?> signedDto = userService.login(loginDto);
		session.setAttribute("principal", signedDto);
		return new ResponseDto<>(1, "계정생성완료", session.getAttribute("principal"));
	}
}