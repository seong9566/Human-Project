package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyInformUpdateDto {
	
	// Company업데이트
	private String companyName;
	private String companyPicture;
	private String companyEmail;
	private String companyPhoneNumber;
	private String companyAddress;
	
	//Users 업데이트
	private String loginPassword;
	
}
