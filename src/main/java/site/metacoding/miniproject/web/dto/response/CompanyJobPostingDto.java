package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.JobPostingUpdateDto;

@Getter
@Setter
public class CompanyJobPostingDto {
		private Integer jobPostingBoardId;
		private Integer companyDetailId;
		private Integer companyId;
		private String jobPostingBoardTitle;
		private String jobPostingBoardContent;
		private String companyPicture;
		private String companyAddress;
		private String companyPhonenumber;
		private String companyEmail;
		
		
		
		//업데이트 
		public void update(JobPostingUpdateDto jobPostingUpdateDto) {
			this.jobPostingBoardTitle = jobPostingUpdateDto.getJobPostingBoardTitle();
			this.jobPostingBoardContent = jobPostingUpdateDto.getJobPostingBoardContent();
			
		}
}
