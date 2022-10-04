package site.metacoding.miniproject.domain.personal.detail;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PersonalDetail {
	private Integer personalDetailId;
	private Integer personalId;
	private String personalEmail;
	private String personalPhoneNumber;
	private Timestamp createdAt;

	public PersonalDetail(PersonalJoinDto joinDto) {
		this.personalId = joinDto.getPersonalId();
		this.personalPhoneNumber = joinDto.getPersonalPhoneNumber();
		this.personalEmail = joinDto.getPersonalEmail();
	}
}
