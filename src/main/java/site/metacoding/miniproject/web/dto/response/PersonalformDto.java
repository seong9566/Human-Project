package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PersonalformDto {
	
	// 내정보에서 보여줄 개인정보
	private String personalName;
	private String personalEmail;
	private String personalPhoneNumber;
}
