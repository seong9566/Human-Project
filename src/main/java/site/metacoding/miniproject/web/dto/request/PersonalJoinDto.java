package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;

@Getter
public class PersonalJoinDto {
	private String loginId;
	private String loginPassword;
	private String personalName;
	private String personalEmail;
	private String personalPhoneNumber;
}
