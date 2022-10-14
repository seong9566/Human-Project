package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PersonalUpdateFormDto {
	
	// 내 정보수정에서 보여줄 개인정보
	private String loginId;
	private String loginPassword;
		
	private String personalName;
	private String personalEmail;
	private String personalPhoneNumber;
}
