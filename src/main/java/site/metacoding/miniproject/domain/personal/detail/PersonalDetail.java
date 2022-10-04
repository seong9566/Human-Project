package site.metacoding.miniproject.domain.personal.detail;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;

@Getter
@Setter
public class PersonalDetail {
	private Integer personalDetailId;
	private Integer personalId;
	private String personalEmail;
	private String personalPhoneNumber;
	private Timestamp createdAt;
	
	public PersonalDetail(PersonalJoinDto joinDto) {
		this.personalPhoneNumber =joinDto.getPersonalPhoneNumber();
		this.personalEmail = joinDto.getPersonalEmail();
	}
}
