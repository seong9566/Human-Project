package site.metacoding.miniproject.service.company;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.web.dto.request.JobPostingInsertDto;
import site.metacoding.miniproject.web.dto.request.JobPostingUpdateDto;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingDto;

@Service
@RequiredArgsConstructor

public class CompanyService {
	
	private final JobPostingBoardDao jobPostingBoardDao;
	private final CompanyDao companyDao;

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
	
	public CompanyJobPostingDto findJobPostingBoardOne(Integer jobPostingBoardId){
		return jobPostingBoardDao.findById(jobPostingBoardId);
	}
	
	public void deleteByJobPostingBoard(Integer jobPostingBoardId) {
		jobPostingBoardDao.deleteById(jobPostingBoardId);
	}
	
	public CompanyInfoDto findCompanyInfo(Integer companyId) {
		return companyDao.companyInfo(companyId);
	}
}
