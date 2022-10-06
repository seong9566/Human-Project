package site.metacoding.miniproject.domain.personal.detail;

import java.util.List;

import site.metacoding.miniproject.domain.personal.Personal;

public interface PersonalDetailDao {
	public void insert(PersonalDetail personalDetail);
	public List<PersonalDetail> findAll();
	public Personal findById(Integer id);
	public void update(PersonalDetail personalDetail);
	public void deleteById(Integer id);

}
