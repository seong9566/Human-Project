package site.metacoding.miniproject.domain.resumes;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Resumes {
	private Integer resumesId;
	private Integer personalId;
	private String picture;
	private String introduce;
	private Timestamp createdAt;
}
