package site.metacoding.miniproject.domain.company;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Company {
	private Integer companyId;
	private String companyName;
	private Integer companyCategory;
	private Timestamp createdAt;
}
