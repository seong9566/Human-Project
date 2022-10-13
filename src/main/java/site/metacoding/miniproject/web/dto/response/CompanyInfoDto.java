package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyInfoDto {

	private String loginId;
	private String loginPassword;
	private Integer companyId;
	private String companyName;
	private String companyPhoneNumber;
	private String companyEmail;
	private String companyPicture;
	private String companyAddress;

	
}

