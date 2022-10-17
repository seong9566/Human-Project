package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UpdateResumesDto {
	private Boolean oneYearLess;
	private Boolean twoYearOver;
	private Boolean threeYearOver;
	private Boolean fiveYearOver;
	private String portfolioSource;
	private String portfolioFile;
	private String resumesTitle;
	private String resumesPicture;
	private String resumesIntroduce;
	private String resumesPlace;
	private Boolean categoryFrontend;
	private Boolean categoryBackend;
	private Boolean categoryDevops;
	
//	public Resumes updateResumesEntity() {
//		Resumes resumes = new Resumes();
//		resumes.setResumesTitle(this.resumesTitle);
//		resumes.setResumesPicture(this.resumesPicture);
//		resumes.setResumesIntroduce(this.resumesIntroduce);
//		return resumes;
//	}	

}
