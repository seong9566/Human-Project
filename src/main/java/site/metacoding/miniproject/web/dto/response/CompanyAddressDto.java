package site.metacoding.miniproject.web.dto.response;

import java.util.List;

import lombok.Getter;

@Getter
public class CompanyAddressDto {
	private Integer companyId;
	private Integer companyDetailId;
	//private List<?> companyAddress;
	
	private String zipCode;
	private String roadName;
	private String detailAddress;
}
