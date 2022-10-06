package site.metacoding.miniproject.domain.subscribe;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Subscribe {
	private Integer subscribeId;
	private Integer companyId;
	private Integer personalId;
	private Integer alarmId;
	private Timestamp createdAt;
}
