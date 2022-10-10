package site.metacoding.miniproject.domain.jobpostingboard;


import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.JobPostingUpdateDto;

@Getter
@Setter
public class JobPostingBoard {
	private Integer jobPostingBoardId;
	private Integer companyId;
	private String jobPostingBoardTitle;
	private String jobPostingBoardContent;
	private Timestamp createdAt;
	

}
