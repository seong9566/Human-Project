package site.metacoding.miniproject.domain.personal.detail;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.InsertPersonalsDto;

public interface PersonalDetailDao {
	public void insert(InsertPersonalsDto insertPersonalsDto);
	public List<PersonalDetail> findAll();
	public PersonalDetail findById(Integer personalId);
	public void update(PersonalDetail personalDetail);
	public void deleteById(Integer id);

}
