package site.metacoding.miniproject.domain.like.personalike;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PersonalLike {
	private Integer personalLikeId;
	private Integer resumesId;
	private Integer companyId;
	private Timestamp createdAt;
}
