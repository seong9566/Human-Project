package site.metacoding.miniproject.domain.users;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Users implements Serializable {
	private Integer usersId;
	private String loginId;
	private String loginPassword;
	private Integer personalId;
	private Integer companyId;
	private Timestamp createdAt;
}
