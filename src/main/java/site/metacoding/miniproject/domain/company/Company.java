package site.metacoding.miniproject.domain.company;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Company implements Serializable{
	private static final long serialVersionUID = 7364337982660485087L;
	private Integer companyId;
	private String companyName;
	private Integer companyCategory;
	private Timestamp createdAt;
}
