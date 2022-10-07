package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UpdatePersonalsDto {
	private String loginPassword;
	private String personalEmail;
	private String personalPhonenumber;
	private Boolean frontend;
	private Boolean backend;
	private Boolean devops;
	
	// 로그인패스워드 서비스, 컨트롤러 업데이트 추가 필요
}
