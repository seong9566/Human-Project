package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.domain.resumes.Resumes;

@Setter
@Getter
public class InsertResumesDto {
	private Integer personalId;
	private String resumesTitle;
	private String resumesPicture;
	private String resumesIntroduce;
	
	public Resumes toEntity() {
		Resumes resumes = new Resumes();
		resumes.setPersonalId(this.personalId);
		resumes.setResumesTitle(this.resumesTitle);
		resumes.setResumesPicture(this.resumesPicture);
		resumes.setResumesIntroduce(this.resumesIntroduce);
		return resumes;
	}
}
