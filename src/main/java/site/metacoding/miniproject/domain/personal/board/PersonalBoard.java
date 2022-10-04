package site.metacoding.miniproject.domain.personal.board;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PersonalBoard {
	private Integer personalBoardId;
	private Integer personalId;
	private String personalBoardTitle;
	private String personalBoardContent;
	private Timestamp createdAt;

}
