package site.metacoding.miniproject.domain.alarm;

import java.security.Timestamp;
import java.util.HashMap;
import java.util.Map;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Alarm {

	private static Alarm alarm = new Alarm();

	private Integer alarmId;
	private Integer usersId;
	private String alarmMessage;
	private Integer alarmApplyId;
	private Integer alarmIncruitId;
	private Integer alarmSubscribeId;
	private Integer alarmCompanyLikeId;
	private Integer alarmPersonalLikeId;
	private Boolean alarmCheck;
	private Timestamp createdAt;

	public static Alarm set(Integer usersId, HashMap<String, Integer> map) {
		alarm.setUsersId(usersId);
		return alarm;
	}

	private Alarm() {
	};
}
