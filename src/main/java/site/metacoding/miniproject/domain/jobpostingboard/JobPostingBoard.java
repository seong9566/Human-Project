package site.metacoding.miniproject.domain.jobpostingboard;


import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JobPostingBoard {
	private Integer jobPostingBoardId;
	private Integer companyId;
	private String jobPostingBoardTitle;
	private String jobPostingBoardContent;
	private Timestamp createdAt;

}
