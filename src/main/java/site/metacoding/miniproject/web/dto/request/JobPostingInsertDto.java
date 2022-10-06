package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoard;

@Getter
@Setter
public class JobPostingInsertDto {
	private String jobPostingBoardTitle;
	private String jobPostingBoardContent;
	
	// insert할 때 필요한것 -> 타이틀과 콘텐츠가 필요함. 
	public JobPostingBoard toEntity() {
		JobPostingBoard jobPostingBoard = new JobPostingBoard();
		jobPostingBoard.setJobPostingBoardTitle(this.jobPostingBoardTitle);
		jobPostingBoard.setJobPostingBoardContent(this.jobPostingBoardContent);
		return jobPostingBoard;
	}
}