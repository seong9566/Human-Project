package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.domain.company.Company;

@Getter
@Setter
public class CompanyUpdateDto {
	// Company업데이트
	private String companyName;
	private String companyPicture;
	private String companyEmail;
	private String companyPhoneNumber;
	private String companyAddress;
	//Users 업데이트
	private String loginPassword;
}
