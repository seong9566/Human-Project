package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoard;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.web.dto.request.JobPostingInsertDto;
import site.metacoding.miniproject.web.dto.request.JobPostingUpdateDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingDto;

@Service
@RequiredArgsConstructor
public class JobPostingBoardService {
	
	private final JobPostingBoardDao jobPostingBoardDao;
	
	
	public List<CompanyJobPostingDto> findJobpostingBoard() {
		return jobPostingBoardDao.findJobpostingBoard();
	}
	
	public void insertJobPostingBoard(JobPostingInsertDto jobPostingInsertDto) {
		jobPostingBoardDao.insert(jobPostingInsertDto.toEntity());
	}
	
	public CompanyJobPostingDto findJobPostingBoardOne(Integer jobPostingBoardId){
		return jobPostingBoardDao.findById(jobPostingBoardId);
	}
	
	public void updateJobPostingBoard(JobPostingUpdateDto jobPostingUpdateDto,Integer jobPostingBoardId) {
		CompanyJobPostingDto jobPostingPS = jobPostingBoardDao.findById(jobPostingBoardId);
		
		jobPostingPS.update(jobPostingUpdateDto);
		
		jobPostingBoardDao.update(jobPostingPS);
		
	}
	
	public void deleteByJobPostingBoard(Integer jobPostingBoardId) {
		jobPostingBoardDao.deleteById(jobPostingBoardId);
	}
}
