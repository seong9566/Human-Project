package site.metacoding.miniproject.domain.personal;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.InsertPersonalsDto;

public interface PersonalDao {
	public void insert(InsertPersonalsDto insertPersonalsDto);
	public List<Personal> findAll();
	public Personal findById(Integer personalId);
	public void update(Personal personal);
	public void deleteById(Integer id);
}
