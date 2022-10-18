package site.metacoding.miniproject.domain.subscribe;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Subscribe implements Serializable {
	private Integer subscribeId;
	private Integer companyId;
	private Integer personalId;
	private Integer alarmId;
	private Timestamp createdAt;

	public Subscribe(Integer personalId, Integer companyId) {
		this.personalId = personalId;
		this.companyId = companyId;
	}
}
