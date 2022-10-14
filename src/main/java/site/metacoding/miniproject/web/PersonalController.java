package site.metacoding.miniproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.resumes.Resumes;
import site.metacoding.miniproject.service.personal.PersonalService;
import site.metacoding.miniproject.web.dto.request.InsertResumesDto;
import site.metacoding.miniproject.web.dto.request.UpdateResumesDto;
import site.metacoding.miniproject.web.dto.response.DetailResumesDto;
import site.metacoding.miniproject.web.dto.response.PersonalInfoDto;
import site.metacoding.miniproject.web.dto.response.PersonalformDto;
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
		SignedDto<?> principal = (SignedDto<?>) session.getAttribute("principal");
		PersonalInfoDto personalInfoPS = personalService.personalInfoById(principal.getPersonalId());
		model.addAttribute("personalInfoPS", personalInfoPS);
		return "personal/resumesForm";
	}

	
	@PostMapping("/personal/resumes")
	public @ResponseBody ResponseDto<?> insertResumes(@RequestBody InsertResumesDto insertResumesDto) {
		personalService.insertResumes(insertResumesDto);
		return new ResponseDto<>(1, "이력서 등록 성공", null);
	}

	// 내가 작성한 이력서 목록 보기
	@GetMapping("/personal/myresumesList")
	public String myresumesList(Model model) {
		SignedDto<?> principal = (SignedDto<?>) session.getAttribute("principal");
		List<Resumes> resumesList = personalService.myresumesAll(principal.getPersonalId());
		model.addAttribute("resumesList", resumesList);
		return "personal/myresumesList";
	}

	// 이력서 상세 보기
	@GetMapping("/personal/myresumes")
	public String resumesById(Model model) {
		SignedDto<?> principal = (SignedDto<?>) session.getAttribute("principal");
		DetailResumesDto detailResumesDtoPS = personalService.resumesById(principal.getPersonalId());
		model.addAttribute("detailResumesDtoPS", detailResumesDtoPS);
		return "personal/resumesDetail";
	}

	
	// 이력서 수정
	@GetMapping("/personal/resumes/{resumesId}/update")
	public String updateForm(@PathVariable Integer resumesId, Model model) {
		DetailResumesDto detailResumesDtoPS = personalService.resumesById(resumesId);
		model.addAttribute("detailResumesDtoPS", detailResumesDtoPS);
		return "personal/resumesUpdateForm";
	}

	@PutMapping("/personal/resumes/{resumesId}/update")
	public @ResponseBody ResponseDto<?> updateResumes(@PathVariable Integer resumesId,
			@RequestBody UpdateResumesDto updateResumesDto) {
//			System.out.println(updateResumesDto.getResumesTitle());
//			System.out.println(updateResumesDto.getResumesIntroduce());
//			System.out.println(updateResumesDto.getResumesPicture());
		personalService.updateResumes(resumesId, updateResumesDto);

		return new ResponseDto<>(1, "이력서수정성공", null);
	}

	// 전체 이력서 목록 보기
	@GetMapping("/resumes")
	public String resumesList(Model model) {
		List<Resumes> resumesList = personalService.resumesAll();
		model.addAttribute("resumesList", resumesList);
		return "company/main";
	}

	// 내정보 보기
	@GetMapping("/personal/{personalId}/form")
	public String form(@PathVariable Integer personalId, Model model) {
		SignedDto<?> principal = (SignedDto<?>) session.getAttribute("principal");
		PersonalformDto personalformPS = personalService.personalformById(principal.getPersonalId());
		model.addAttribute("personalform", personalformPS);;
		return "personal/info";
	}
	
	

	
	
	// 내정보 수정
	@GetMapping("/personal/{personalId}/update")
	public String update(@PathVariable Integer personalId,Model model) {
		PersonalformDto personalformPS = personalService.personalformById(personalId);
		model.addAttribute("personalform", personalformPS);
		return "personal/update";
	}

	
	
}
