package site.metacoding.miniproject.web.dto.response;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PersonalMainDto {
	private Integer jobPostingBoardId;
	private String jobPostingBoardTitle;
	private Timestamp jobPostingBoardDeadline;
}
