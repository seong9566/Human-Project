package site.metacoding.miniproject.domain.jobpostingboard;


import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
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

}
