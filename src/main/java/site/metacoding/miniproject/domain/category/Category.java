package site.metacoding.miniproject.domain.category;

import java.sql.Timestamp;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.CompanyJoinDto;

@Getter
@Setter
@NoArgsConstructor
public class Category {
	private Integer categoryId;
	private Boolean frontend;
	private Boolean backend;
	private Boolean devops;
	private Timestamp createdAt;
	
	public Category(CompanyJoinDto companyJoinDto) {
		this.frontend = companyJoinDto.getFrontend();
		this.backend = companyJoinDto.getBackend();
		this.devops = companyJoinDto.getDevops();
	}	
}
