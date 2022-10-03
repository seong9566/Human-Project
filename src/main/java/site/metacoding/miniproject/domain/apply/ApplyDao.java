package site.metacoding.miniproject.domain.apply;

import java.util.List;

public interface ApplyDao {
	public void insert(Apply category);
	public List<Apply> findAll();
	public Apply findById(Integer id);
	public void update(Apply category);
	public void deleteById(Integer id);

}
