package site.metacoding.miniproject.web.dto.request;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InsertRecommendDto {
	private Integer personalLikeId;
	private Integer resumesId;
	private Integer companyId;
	private Timestamp createdAt;

}