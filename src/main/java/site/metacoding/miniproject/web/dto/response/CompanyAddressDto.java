package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;

@Getter
public class CompanyAddressDto {
	private Integer companyId;
	private String zoneCode;
	private String roadJibunAddr;
	private String detailAddress;
}
