package site.metacoding.miniproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.company.CompanyService;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingBoardDto;
import site.metacoding.miniproject.web.dto.response.SignedDto;

@Controller
@RequiredArgsConstructor
public class CompanyController {
	private final HttpSession session;
	private final CompanyService companyService;
	
	//회사 정보 보기 
	@GetMapping("/company/inform")
	public String inform(Model model) {
		SignedDto<?> principal =  (SignedDto)session.getAttribute("principal");
		CompanyInfoDto companyPS =  companyService.findCompanyInfo(principal.getCompanyId());
		model.addAttribute("companyInfo", companyPS);
		System.out.println("=========회사 정보 ==========");
		System.out.println(principal.getLoginId());
		System.out.println(principal.getLoginPassword());
		System.out.println(principal.getCompanyId());
		System.out.println(companyPS.getCompanyId());
		System.out.println(companyPS.getLoginId());
		System.out.println(companyPS.getCompanyEmail());
		System.out.println(companyPS.getCompanyName());
		System.out.println(companyPS.getCompanyPhoneNumber());
		System.out.println(companyPS.getCompanyPicture());
		System.out.println(companyPS.getCategoryBackend());
		System.out.println(companyPS.getCategoryFrontend());
		System.out.println(companyPS.getCategoryDevops());
		System.out.println("=========회사 정보 ==========");
		return "company/inform";
	}
	
	// 회사 정보 수정 
	
	
		//회사의 구인 공고 리스트 보기 
		@GetMapping("/company/{companyId}/jobpostingboardList")
		public String findAlljobPostingBoard(Model model,@PathVariable Integer companyId) {
		List<CompanyJobPostingBoardDto> jobPostingBoardPS =  companyService.findAllJobpostingBoard();
		model.addAttribute("jobPostingBoardList", jobPostingBoardPS);
		
		System.out.println("======================");
		for(int i = 0 ; i < jobPostingBoardPS.size() ;i++) {
			System.out.println(jobPostingBoardPS);
		}
		System.out.println("======================");
		return "company/companyJobPostingBoardList";
		}
		
		@GetMapping("/company/{companyId}/inform/update")
		public String informUpdate(@PathVariable Integer companyId) {
			return "company/update";
		}
	
}