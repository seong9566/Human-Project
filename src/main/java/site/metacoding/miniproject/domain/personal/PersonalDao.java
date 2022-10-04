package site.metacoding.miniproject.domain.personal;

import java.util.List;

public interface PersonalDao {
	public void insert(Personal personal);

	public List<Personal> findAll();

	public Personal findById(Integer personalId);

	public void update(Personal personal);

	public void deleteById(Integer id);

}
