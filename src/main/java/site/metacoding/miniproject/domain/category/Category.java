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
	private Boolean categoryFrontend;
	private Boolean categoryBackend;
	private Boolean categoryDevops;
	private Timestamp createdAt;
	
	public Category(PersonalJoinDto personalJoinDto) {
		this.categoryFrontend = personalJoinDto.getFrontend();
		this.categoryBackend = personalJoinDto.getBackend();
		this.categoryDevops = personalJoinDto.getDevops();
	}	
}
