package site.metacoding.miniproject.domain.users;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.CompanyJoinDto;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;

@Getter
@Setter
@NoArgsConstructor
public class Users {
	private Integer usersId;
	private String loginId;
	private String loginPassword;
	private Integer personalId;
	private Integer companyId;
	private Timestamp createdAt;

	public Users(PersonalJoinDto joinDto) {
		this.loginId = joinDto.getLoginId();
		this.loginPassword = joinDto.getLoginPassword();
		this.personalId = joinDto.getPersonalId();
	}

	public Users(CompanyJoinDto joinDto) {
		this.loginId = joinDto.getLoginId();
		this.loginPassword = joinDto.getLoginPassword();
		this.companyId = joinDto.getCompanyId();
	}
}
