package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PersonalformDto {
	//나의 정보에 보여줄 DTO
	
	private String personalName;
	private String personalEmail;
	private String personalPhoneNumber;
}
