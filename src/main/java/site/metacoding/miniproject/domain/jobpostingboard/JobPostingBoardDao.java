package site.metacoding.miniproject.domain.jobpostingboard;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.CompanyJobPostingDto;

public interface JobPostingBoardDao {
	public void insert(JobPostingBoard jobPostingBoard);
	public List<JobPostingBoard> findAll();
	public CompanyJobPostingDto findById(Integer jobPostingBoardId);
	public void update(CompanyJobPostingDto companyJobPostingDto);
	public void deleteById(Integer jobPostingBoardId);
	
	//채용공고 목록 보기
	public List<CompanyJobPostingDto> findJobpostingBoard();

}
