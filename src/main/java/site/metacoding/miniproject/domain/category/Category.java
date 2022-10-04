package site.metacoding.miniproject.domain.category;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Category {
	private Integer categoryId;
	private Boolean frontend;
	private Boolean backend;
	private Boolean devops;
	private String etc;
	private Timestamp createdAt;
}
