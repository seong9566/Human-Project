package site.metacoding.miniproject.domain.category;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Category {
	private Integer categoryId;
	private Integer frontend;
	private Integer backend;
	private Integer devops;
	private String etc;
	private Timestamp createdAt;
}
