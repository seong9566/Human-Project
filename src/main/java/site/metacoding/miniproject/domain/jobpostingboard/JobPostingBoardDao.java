package site.metacoding.miniproject.domain.jobpostingboard;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.CompanyJobPosting;

public interface JobPostingBoardDao {
	public void insert(JobPostingBoard jobPostingBoard);
	public List<JobPostingBoard> findAll();
	public JobPostingBoard findById(Integer jobPostingBoardId);
	public void update(JobPostingBoard jobPostingBoard);
	public void deleteById(Integer jobPostingBoardId);
	
	public List<CompanyJobPosting> findJobpostingBoard();

}
