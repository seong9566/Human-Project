package site.metacoding.miniproject.domain.alarm;

import java.util.List;

public interface AlarmDao {
	public void insert(Alarm alarm);
	public List<Alarm> findAll();
	public Alarm findById(Integer alarmId);
	public void update(Alarm alarm);
	public void deleteById(Integer alarmId);

}
