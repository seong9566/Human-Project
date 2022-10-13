package site.metacoding.miniproject.web.dto.request;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InsertRecommendDto {
	private Integer resumesId;
	private String resumesTitle;
	private Timestamp createdAt;

}