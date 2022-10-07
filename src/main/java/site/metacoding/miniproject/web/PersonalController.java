package site.metacoding.miniproject.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.PersonalService;
import site.metacoding.miniproject.web.dto.request.UpdatePersonalsDto;

@RequiredArgsConstructor
@Controller
public class PersonalController {
	
	private final PersonalService personalService;
	
	// 개인정보 목록보기 - 존재하지 않음
	
	// 개인정보 작성하기 - 회원가입 에 포함. 
	
	// 개인정보 상세보기 : 로그인 아이디 불러오기 추가 필요. 
	@GetMapping("/personal/{personalId}")
	public String personalsById(@PathVariable Integer personalId, Integer categoryId, Model model) {
		model.addAttribute("personal", personalService.findByPersonal(personalId));
		model.addAttribute("personalDetail", personalService.findByPersonalDetail(personalId));
		model.addAttribute("category", personalService.findByCategory(categoryId));
		return "personal/"+personalId;
	}	
	
	// 개인정보 수정하기
	@PostMapping("/personal/{personalId}/update")
	public String updatePersonals(@PathVariable Integer personalId, Integer categoryId, UpdatePersonalsDto updatePersonalsDto) {
		personalService.updatePersonal(personalId, categoryId, updatePersonalsDto);
		return "redirect:/personal/"+personalId;
	}
	
	// 개인정보 삭제하기 - 회원탈퇴 에 포함.	

}
