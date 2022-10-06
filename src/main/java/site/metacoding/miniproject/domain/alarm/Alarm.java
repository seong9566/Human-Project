package site.metacoding.miniproject.domain.alarm;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Alarm {
	private Integer alarmId;
	private Integer usersId;
	private Integer alarmApplyId;
	private Integer alarmIncruitId;
	private Integer alarmSubscribeId;
	private Integer alarmCompanyLikeId;
	private Integer alarmPersonalLikeId;
}
