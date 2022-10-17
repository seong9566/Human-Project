package site.metacoding.miniproject.web.dto.request;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class JobPostingBoardUpdateDto {
	
	//postingBoard 테이블
	private Integer jobPostingBoardId;
	private Integer companyId;
	private Integer jobPostingBoardCategoryId;
	private Integer jobPostingBoardCareerId;
	private String jobPostingBoardTitle;
	private String jobPostingBoardContent;
	private Integer jobPostingSalary;
	private String jobPostingBoardPlace;
	private Timestamp jobPostingBoardDeadline;

	//Category테이블 
	private Integer categoryId;
	private Boolean categoryFrontend;
	private Boolean categoryBackend;
	private Boolean categoryDevops;
	
	//Career테이블	  
	private Integer careerId;
	private Boolean oneYearLess;
	private Boolean twoYearOver;
	private Boolean threeYearOver;
	private Boolean fiveYearOver;
	
	//company테이블
	private String companyPicture;
	private String companyName;
	private String companyEmail;
	private String companyPhoneNumber;
	
	//TimeStamp > String
	private String formatDeadLine;
}


