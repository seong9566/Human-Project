package site.metacoding.miniproject.domain.personal;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Personal {
	private Integer personalId;
	private String personalName;
	private Integer personalCategoryId;
	private Timestamp createdAt;
}
