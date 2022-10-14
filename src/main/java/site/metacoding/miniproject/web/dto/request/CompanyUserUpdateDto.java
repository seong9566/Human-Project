package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.domain.users.Users;

@Getter
@Setter
public class CompanyUserUpdateDto {
	//Users 업데이트
	private String loginPassword;
	
	private String companyName;
	private String companyPicture;
	private String companyEmail;
	private String companyPhoneNumber;
	private String companyAddress;
	
}
