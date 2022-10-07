package site.metacoding.miniproject.domain.category;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.UpdatePersonalsDto;

@Getter
@Setter
public class Category {
	private Integer categoryId;
	private Boolean frontend;
	private Boolean backend;
	private Boolean devops;
	private Timestamp createdAt;
	
	public void updateCategory(UpdatePersonalsDto updatePersonalsDto) {
		this.frontend = updatePersonalsDto.getFrontend();
		this.backend = updatePersonalsDto.getBackend();
		this.devops = updatePersonalsDto.getDevops();
	}
}
