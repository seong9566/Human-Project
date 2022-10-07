package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class FindByPersonalsDto {
	private String loginId;
	private String personalName;
	private String personalPhonenumber;
	private String personalEmail;
	private Boolean frontend;
	private Boolean backend;
	private Boolean devops;
}
