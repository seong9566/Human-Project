package site.metacoding.miniproject.web;

import java.net.Inet4Address;
import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.service.JobPostingBoardService;
import site.metacoding.miniproject.web.dto.request.JobPostingInsertDto;
import site.metacoding.miniproject.web.dto.request.JobPostingUpdateDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingDto;
import site.metacoding.miniproject.web.dto.response.ResponseDto;

@RequiredArgsConstructor
@RestController
public class JobpostingBoardController {

	
	private final JobPostingBoardService jobPostingBoardService;
	
	
	@GetMapping("/jobpostingboard")
	public List<CompanyJobPostingDto> findJobPostingBoard(){
		
		List<CompanyJobPostingDto> jobPostingBoardList = jobPostingBoardService.findJobpostingBoard();
		
		return jobPostingBoardList;
	}
	
	@PostMapping("/jobpostingboard/insert")
	public @ResponseBody ResponseDto<?> insertJobPostingBoard(@RequestBody JobPostingInsertDto jobPostingInsertDto){
		jobPostingBoardService.insertJobPostingBoard(jobPostingInsertDto);
		return new ResponseDto<>(1,"등록 성공",null);
				
	}
	
	@GetMapping("/jobpostingboard/{jobPostingBoardId}")
	public CompanyJobPostingDto findJobPostingOne(@PathVariable Integer jobPostingBoardId){
		CompanyJobPostingDto jobPostingOne = jobPostingBoardService.findJobPostingBoardOne(jobPostingBoardId);
		return jobPostingOne;
		
	}
	
	@PostMapping("/jobpostingboard/{jobPostingBoardId}/update")
	public @ResponseBody ResponseDto<?> updateJobPostingBoard(@RequestBody JobPostingUpdateDto jobPostingUpdateDto,@PathVariable Integer jobPostingBoardId){
		jobPostingBoardService.updateJobPostingBoard(jobPostingUpdateDto, jobPostingBoardId);
		return new ResponseDto<>(1,"수정성공",null);
	}
	
	@DeleteMapping("/jobpostingboard/{jobPostingBoardId}/delete")
	public @ResponseBody ResponseDto<?> deleteByJobPostingBoard(@PathVariable Integer jobPostingBoardId){
		jobPostingBoardService.deleteByJobPostingBoard(jobPostingBoardId);
		return new ResponseDto<>(1,"삭제 성공",null);
	}
}
