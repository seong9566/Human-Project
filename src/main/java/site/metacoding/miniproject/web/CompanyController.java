package site.metacoding.miniproject.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.CompanyService;
import site.metacoding.miniproject.web.dto.response.CompanyMainDto;

@RequiredArgsConstructor
@Controller
public class CompanyController {
	
	private final CompanyService companyService;
	
	@GetMapping("/company")
	public String companyMain(Model model) {
		List<CompanyMainDto> resumesList = companyService.resumesList();
		model.addAttribute("resumesList", resumesList);		
		return "/companyMain";
	}
	

}