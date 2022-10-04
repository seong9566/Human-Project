package site.metacoding.miniproject.web.dto.request;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class LoginDto {
	private String loginId;
	private String loginPassword;

	public LoginDto(PersonalJoinDto joindto) {
		this.loginId = joindto.getLoginId();
		this.loginPassword = joindto.getLoginPassword();
	}

}
