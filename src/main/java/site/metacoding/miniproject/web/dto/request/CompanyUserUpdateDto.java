package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CompanyUserUpdateDto {
	private String loginId;
	private String loginPassword;
	
}
