package site.metacoding.miniproject.domain.company;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.CompanyJoinDto;
import site.metacoding.miniproject.web.dto.request.CompanyInformUpdateDto;

@Getter
@Setter
@NoArgsConstructor
public class Company implements Serializable {
	private Integer companyId;
	private String companyName;
	private String companyPicture;
	private String companyEmail;
	private String companyPhoneNumber;
	private String companyAddress;
	private Timestamp createdAt;

	private static final long serialVersionUID = 7364337982660485087L;

	public Company(CompanyJoinDto joinDto) {
		this.companyName = joinDto.getCompanyName();
	}
	
	public void updateCompany(CompanyInformUpdateDto companyInformUpdateDto) {
		this.companyName = companyInformUpdateDto.getCompanyName();
		this.companyPicture = companyInformUpdateDto.getCompanyPicture();
		this.companyEmail = companyInformUpdateDto.getCompanyEmail();
		this.companyPhoneNumber = companyInformUpdateDto.getCompanyPhoneNumber();
		this.companyAddress = companyInformUpdateDto.getCompanyAddress();
	}
	
}
