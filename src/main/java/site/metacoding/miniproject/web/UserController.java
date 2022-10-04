package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import site.metacoding.miniproject.web.dto.ResponseDto;


@Controller
public class UserController {
	
	
	@PostMapping("/login")
	@ResponseBody 
	public ResponseDto<?> loginForm(@RequestBody String userId, @RequestBody String password){
		return null;
	}
	
	@GetMapping("/join")
	public String joinForm() {
		return null;
	}

}
