package site.metacoding.miniproject.service.company;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.domain.personal.Personal;
import site.metacoding.miniproject.domain.personal.PersonalDao;
import site.metacoding.miniproject.domain.personal.detail.PersonalDetail;
import site.metacoding.miniproject.web.dto.request.JobPostingInsertDto;
import site.metacoding.miniproject.web.dto.request.JobPostingUpdateDto;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingDto;

@Service
@RequiredArgsConstructor

public class CompanyService {
	
	private final JobPostingBoardDao jobPostingBoardDao;
	//이력서 리스트 보기 때문에 PersonalDao필요.
	
	//1. 내가 쓴 구인공고 리스트로 보기 
	// 채용공고 모두 보기 
	public List<CompanyJobPostingDto> findAllJobpostingBoard() {
		return jobPostingBoardDao.findJobpostingBoard();
	}
	
	public void insertJobPostingBoard(JobPostingInsertDto jobPostingInsertDto) {
		jobPostingBoardDao.insert(jobPostingInsertDto.toEntity());
	}

	
	public void updateJobPostingBoard(JobPostingUpdateDto jobPostingUpdateDto,Integer jobPostingBoardId) {
		CompanyJobPostingDto jobPostingPS = jobPostingBoardDao.findById(jobPostingBoardId);
		
		jobPostingPS.update(jobPostingUpdateDto);
		
		jobPostingBoardDao.update(jobPostingPS);
		
	}
	// 채용공고 상세 보기 
	public CompanyJobPostingDto findJobPostingBoardOne(Integer jobPostingBoardId){
		return jobPostingBoardDao.findById(jobPostingBoardId);
	}
	
	public void deleteByJobPostingBoard(Integer jobPostingBoardId) {
		jobPostingBoardDao.deleteById(jobPostingBoardId);
	}
	
	
}
