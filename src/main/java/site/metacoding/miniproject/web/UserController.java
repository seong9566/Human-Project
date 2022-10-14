package site.metacoding.miniproject.web;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.config.SessionConfig;
import site.metacoding.miniproject.domain.alarm.Alarm;
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

	@GetMapping({ "/main", "/" })
	public String mainForm() {
		return "/company/main";
	}

	@GetMapping("/loginForm")
	public String loginForm() {
		if(session.getAttribute("principal") != null) {
			return "redirect:/main";
		}
		return "/personal/login";
	}

	@GetMapping("/logout")
	public String logout() {
		SessionConfig.logout(session.getId());
		session.removeAttribute("principal");
		session.removeAttribute("companyId");
		session.removeAttribute("personalId");
		return "redirect:/main";
	}

	@GetMapping("/company/joinForm")
	public String CompanyJoinForm() {
		return "company/join";
	}

	@GetMapping("/personal/joinForm")
	public String PersonalJoinForm() {
		return "personal/join";
	}

	@GetMapping("/checkId/{loginId}")
	public @ResponseBody ResponseDto<?> userIdSameCheck(@PathVariable String loginId) {

		ResponseDto<?> responseDto;

		if (loginId == null || loginId == "") {
			responseDto = new ResponseDto<>(-1, "아이디를 입력하여 주세요", null);
			return responseDto;
		}
		Integer userCheck = userService.checkUserId(loginId);
		if (userCheck == null) {
			responseDto = new ResponseDto<>(1, "아이디 중복 없음 사용하셔도 좋습니다.", null);
		} else {
			responseDto = new ResponseDto<>(-1, "아이디 중복이 확인됨", null);
		}
		return responseDto;
	}

	@PostMapping("/login")
	public @ResponseBody ResponseDto<?> login(@RequestBody LoginDto loginDto) {
		SignedDto<?> signedDto = userService.login(loginDto);

		if (signedDto == null)
			return new ResponseDto<>(-1, "비밀번호 또는 아이디를 확인하여 주세요", null);

		if (SessionConfig.getSessionidCheck(signedDto.getUsersId()) != null) {
			return new ResponseDto<>(-2, "중복 로그인 확인됨", null);
		}

		session.setAttribute("principal", signedDto);
		SessionConfig.login(session.getId(), signedDto.getUsersId());

		if (signedDto.getCompanyId() != null) {
			session.setAttribute("companyId", signedDto.getCompanyId());
		} else {
			session.setAttribute("personalId", signedDto.getPersonalId());
		}
		return new ResponseDto<>(1, "로그인완료", null);
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

	@GetMapping("/user/alarm/{usersId}")
	public @ResponseBody ResponseDto<?> refreshUserAlarm(@PathVariable Integer usersId) {
		ResponseDto<?> responseDto = null;
		List<Alarm> usersAlarm = userService.userAlarm(usersId);
		if (!usersAlarm.isEmpty())
			responseDto = new ResponseDto<>(1, "통신 성공", usersAlarm);

		return responseDto;
	}
	
	@DeleteMapping("/user/alarm/{alarmId}")
	public @ResponseBody ResponseDto<?> deleteUserAlarm(@PathVariable Integer alarmId){
		userService.deleteAlarm(alarmId);
		return new ResponseDto<>(1, "삭제 성공", null);
	}

}