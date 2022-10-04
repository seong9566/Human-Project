package site.metacoding.miniproject.domain.personal.detail;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PersonalDetail {
	private Integer personalDetailId;
	private Integer personalId;
	private String personalEmail;
	private String personalPhoneNumber;
	private Timestamp createdAt;
}
