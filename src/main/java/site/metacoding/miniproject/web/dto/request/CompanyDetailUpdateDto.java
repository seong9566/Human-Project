package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyDetailUpdateDto {
	private String companyEmail;
	private String companyPhoneNumber;
	private String companyPicture;
	private String companyAddress;

}
