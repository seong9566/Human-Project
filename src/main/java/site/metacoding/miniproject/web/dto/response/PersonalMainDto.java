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
	//모집중, 모집 마감
	private String state;
	//TimeStamp > String
	private String formatDeadLine;
}
