package site.metacoding.miniproject.domain.subscribe;

import java.util.List;

public interface SubscribeDao {
	public void insert(Subscribe subscribe);
	public List<Subscribe> findAll();
	public Subscribe findById(Integer id);
	public void update(Subscribe subscribe);
	public void deleteById(Integer id);

}
