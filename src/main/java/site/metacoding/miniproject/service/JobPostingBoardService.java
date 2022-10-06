package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.web.dto.request.JobPostingInsertDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPosting;

@Service
@RequiredArgsConstructor
public class JobPostingBoardService {
	
	private final JobPostingBoardDao jobPostingBoardDao;
	
	
	public List<CompanyJobPosting> findJobpostingBoard() {
		return jobPostingBoardDao.findJobpostingBoard();
	}
	
	public void insertJobPostingBoard(JobPostingInsertDto jobPostingInsertDto) {
		jobPostingBoardDao.insert(jobPostingInsertDto.toEntity());
	}
}
