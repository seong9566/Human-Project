package site.metacoding.miniproject.domain.like.companylike;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyLike {
	private Integer companyLikeId;
	private Integer personalId;
	private Integer companyId;
	private Integer alarmId;
	private Timestamp createdAt;
}
