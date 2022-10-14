package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.domain.users.Users;

@Getter
@Setter
public class CompanyUserUpdateDto {
	//Users 업데이트
	private String loginPassword;
	
	public Users toEntity() {
		Users users = new Users();
		users.setLoginPassword(loginPassword);
		return users;
	}
}
