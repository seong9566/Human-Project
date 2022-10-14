package site.metacoding.miniproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import io.lettuce.core.dynamic.annotation.Param;
import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.company.CompanyService;
import site.metacoding.miniproject.web.dto.request.CompanyUpdateDto;
import site.metacoding.miniproject.web.dto.request.CompanyUserUpdateDto;
import site.metacoding.miniproject.web.dto.response.CompanyAddressDto;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingBoardDto;
import site.metacoding.miniproject.web.dto.response.ResponseDto;
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
		CompanyAddressDto addressPS = companyService.findByAddress(principal.getCompanyId());
		model.addAttribute("address", addressPS);
		model.addAttribute("companyInfo", companyPS);
		return "company/inform";
	}
	
	// 테이블 변경으로 인한 수정 필요함 
	// 회사 정보 수정폼
	@GetMapping("/company/inform/update")
	public String companyUpdateForm(Model model) {
		SignedDto<?> principal =  (SignedDto)session.getAttribute("principal");
		CompanyInfoDto companyPS =  companyService.findCompanyInfo(principal.getCompanyId());
		CompanyAddressDto addressPS = companyService.findByAddress(principal.getCompanyId());
		model.addAttribute("address", addressPS);
		model.addAttribute("companyInfo", companyPS);
		return "company/update";
	}
	
	@PutMapping("/company/inform/update")
	public @ResponseBody ResponseDto<?> companyUpdate(@RequestBody CompanyUpdateDto companyUpdateDto){
		SignedDto<?> principal =  (SignedDto)session.getAttribute("principal");
		companyService.updateCompany(principal.getUsersId(),principal.getCompanyId(), companyUpdateDto);
		return new ResponseDto<>(1,"수정 성공",null);
	}
	
	
	
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