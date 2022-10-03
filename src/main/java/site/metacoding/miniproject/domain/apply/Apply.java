package site.metacoding.miniproject.domain.apply;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Apply {
	private Integer ApplyId;
	private Integer companyBoardId;
	private Integer resumesId;
	private Timestamp createdAt;
}
