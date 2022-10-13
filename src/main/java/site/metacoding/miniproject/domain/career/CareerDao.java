package site.metacoding.miniproject.domain.career;

import java.util.List;

public interface CareerDao {
	public void insert(Career careerId);
	public List<Career> findAll();
	public Career findById(Integer careerId);
	public void update(Career category);
	public void deleteById(Integer careerId);

}
