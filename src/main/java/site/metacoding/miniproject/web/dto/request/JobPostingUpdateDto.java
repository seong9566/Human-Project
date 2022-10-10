package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoard;

@Getter
@Setter
public class JobPostingUpdateDto {
	private String jobPostingBoardTitle;
	private String jobPostingBoardContent;
	
}