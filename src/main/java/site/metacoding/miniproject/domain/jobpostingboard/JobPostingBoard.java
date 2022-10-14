package site.metacoding.miniproject.domain.jobpostingboard;


import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.JobPostingBoardInsertDto;

@Getter
@Setter
@NoArgsConstructor
public class JobPostingBoard {
	private Integer jobPostingBoardId;
	private Integer companyId;
	private Integer jobPostingBoardCategoryId;
	private Integer jobPostingSalary;
	private Integer jobPostingBoardCareerId;
	private String jobPostingBoardTitle;
	private String jobPostingBoardContent;
	private String jobPostingBoardPlace;
	private Timestamp jobPostingBoardDeadline;
	private Timestamp createdAt;

	public JobPostingBoard(JobPostingBoardInsertDto jobPostingBoardInsertDto) {
		this.jobPostingSalary = jobPostingBoardInsertDto.getJobPostingSalary();
		this.jobPostingBoardTitle = jobPostingBoardInsertDto.getJobPostingBoardTitle();
		this.jobPostingBoardContent = jobPostingBoardInsertDto.getJobPostingBoardContent();
		this.jobPostingBoardPlace = jobPostingBoardInsertDto.getJobPostingBoardPlace();
		this.jobPostingBoardDeadline = jobPostingBoardInsertDto.getJobPostingBoardDeadline();
	}
}
