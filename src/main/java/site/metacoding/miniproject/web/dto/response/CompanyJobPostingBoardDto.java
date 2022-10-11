package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyJobPostingBoardDto {
		private Integer jobPostingBoardId;
		private Integer companyDetailId;
		private Integer companyId;
		private String jobPostingBoardTitle;
		private String jobPostingBoardContent;
		private String companyPicture;
		private String companyAddress;
		private String companyPhonenumber;
		private String companyEmail;
		
		
}