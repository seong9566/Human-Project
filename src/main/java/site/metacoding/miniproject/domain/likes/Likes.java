package site.metacoding.miniproject.domain.likes;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Likes {
	private Integer likeId;
	private Integer personalId;
	private Integer companyId;
	private Timestamp createdAt;
}
