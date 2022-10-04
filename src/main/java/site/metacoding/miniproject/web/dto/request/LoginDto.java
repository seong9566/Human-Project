package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class LoginDto {
	private String loginId;
	private String loginPassword;

	public LoginDto(PersonalJoinDto joindto) {
		this.loginId = joindto.getLoginId();
		this.loginPassword = joindto.getLoginPassword();
	}

	public LoginDto(CompanyJoinDto joindto) {
		this.loginId = joindto.getLoginId();
		this.loginPassword = joindto.getLoginPassword();
	}

}
