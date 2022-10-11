package site.metacoding.miniproject.domain.category;

import java.sql.Timestamp;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.CompanyJoinDto;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;

@Getter
@Setter
@NoArgsConstructor
public class Category {
	private Integer categoryId;
	private Boolean frontend;
	private Boolean backend;
	private Boolean devops;
	private Timestamp createdAt;
	
	public Category(PersonalJoinDto personalJoinDto) {
		this.frontend = personalJoinDto.getFrontend();
		this.backend = personalJoinDto.getBackend();
		this.devops = personalJoinDto.getDevops();
	}	
}
