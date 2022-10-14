package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.domain.personal.Personal;

@Getter
@Setter
public class UpdatePersonalDto {
	private String personalName;
	private String personalEmail;
	private String personalPhoneNumber;
	
	public Personal toEnity() {
		Personal personal = new Personal();
		personal.setPersonalName(this.personalName);
		personal.setPersonalEmail(this.personalEmail);
		personal.setPersonalPhoneNumber(this.personalPhoneNumber);
		return personal;
	}
}
