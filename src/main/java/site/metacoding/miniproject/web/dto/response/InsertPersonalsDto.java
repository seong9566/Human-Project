package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class InsertPersonalsDto {
	private String personalName;
	private String personalEmail;
	private String personalPhonenumber;
	private Boolean frontend;
	private Boolean backend;
	private Boolean devops;
	
	public InsertPersonalsDto toEntity() {
		InsertPersonalsDto insertPersonalsDto = new InsertPersonalsDto();
		insertPersonalsDto.setPersonalName(this.personalName);
		insertPersonalsDto.setPersonalEmail(this.personalEmail);
		insertPersonalsDto.setPersonalName(this.personalName);
		insertPersonalsDto.setFrontend(this.frontend);
		insertPersonalsDto.setBackend(this.backend);
		insertPersonalsDto.setDevops(this.devops);
		return insertPersonalsDto;
	}
}
