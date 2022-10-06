package site.metacoding.miniproject.web;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.JobPostingBoardService;
import site.metacoding.miniproject.web.dto.ResponseDto;
import site.metacoding.miniproject.web.dto.request.JobPostingInsertDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPosting;

@RequiredArgsConstructor
@RestController
public class JobpostingBoardController {

	
	private final JobPostingBoardService jobPostingBoardService;
	
	
	@GetMapping("/jobpostingboard")
	public List<CompanyJobPosting> findJobPostingBoard(){
		
		List<CompanyJobPosting> jobPostingBoardList = jobPostingBoardService.findJobpostingBoard();
		
		return jobPostingBoardList;
	}
	
	@PostMapping("/jobpostingboard/insert")
	public @ResponseBody ResponseDto<?> insertJobPostingBoard(@RequestBody JobPostingInsertDto jobPostingInsertDto){
		jobPostingBoardService.insertJobPostingBoard(jobPostingInsertDto);
		return new ResponseDto<>(1,"등록성공",null);
				
	}
}
