package site.metacoding.miniproject.domain.personal.detail;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.UpdatePersonalsDto;

@Getter
@Setter
public class PersonalDetail {
	private Integer personalDetailId;
	private Integer personalId;
	private String personalEmail;
	private String personalPhonenumber;
	private Timestamp createdAt;
	
	public void updatePersonalDetail(UpdatePersonalsDto updatePersonalsDto) {
		this.personalEmail = updatePersonalsDto.getPersonalEmail();
		this.personalPhonenumber = updatePersonalsDto.getPersonalPhonenumber();
	}
}
