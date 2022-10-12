package site.metacoding.miniproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.personal.PersonalService;
import site.metacoding.miniproject.web.dto.request.InsertResumesDto;
import site.metacoding.miniproject.web.dto.response.PersonalInfoDto;
import site.metacoding.miniproject.web.dto.response.ResponseDto;
import site.metacoding.miniproject.web.dto.response.SignedDto;

@RequiredArgsConstructor
@Controller
public class PersonalController {
	
	private final HttpSession session;
	private final PersonalService personalService;

		// 이력서 작성 하기
		@GetMapping("/personal/resumesForm")
		public String resumesForm(Model model) {				
			SignedDto<?> principal = (SignedDto<?>)session.getAttribute("principal");		
			PersonalInfoDto personalInfoPS = personalService.personalInfoById(principal.getPersonalId());			
			model.addAttribute("personalInfoPS", personalInfoPS);
			return "personal/resumesForm";
		}

		@PostMapping("/personal/resumes")
		public @ResponseBody ResponseDto<?> insertResumes(@RequestBody InsertResumesDto insertResumesDto) {
			personalService.insertResumes(insertResumesDto);
			return new ResponseDto<>(1, "이력서 등록 성공", null);
		}

}
