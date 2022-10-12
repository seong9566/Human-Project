package site.metacoding.miniproject.domain.resumes;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Resumes {
	private Integer resumesId;
	private Integer personalId;
	private String resumesTitle;
	private String resumesPicture;
	private String resumesIntroduce;
	private Timestamp createdAt;
	
	// 이력서 작성
	public Resumes(Integer personalId, String resumesTitle, String resumesPicture, String resumesIntroduce) {
		this.personalId = personalId;
		this.resumesTitle = resumesTitle;
		this.resumesPicture = resumesPicture;
		this.resumesIntroduce = resumesIntroduce;
	}
	
	// 이력서 수정
	public Resumes(String resumesTitle, String resumesPicture, String resumesIntroduce) {
		this.resumesId = resumesId;
		this.resumesTitle = resumesTitle;
		this.resumesPicture = resumesPicture;
		this.resumesIntroduce = resumesIntroduce;
	}
}
