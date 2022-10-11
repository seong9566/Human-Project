package site.metacoding.miniproject.domain.personal;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;

@Getter
@Setter
@NoArgsConstructor
public class Personal implements Serializable {
	private Integer personalId;
	private String personalName;
	private Integer personalCategory;
	private Timestamp createdAt;

	private static final long serialVersionUID = -7116277808098494580L; // 시리얼 아이디 - 레디스 서버와 통신을 위함

	public Personal(PersonalJoinDto joinDto) {
		this.personalName = joinDto.getPersonalName();
	}
}
