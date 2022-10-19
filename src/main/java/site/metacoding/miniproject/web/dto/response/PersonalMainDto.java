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
	//company
	private String companyPicture;
	private String companyName;
	//Category테이블 
	private Boolean categoryFrontend;
	private Boolean categoryBackend;
	private Boolean categoryDevops;
	
	//Career테이블	  
	private Boolean oneYearLess;
	private Boolean twoYearOver;
	private Boolean threeYearOver;
}
