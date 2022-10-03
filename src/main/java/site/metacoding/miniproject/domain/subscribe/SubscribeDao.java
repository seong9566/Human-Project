package site.metacoding.miniproject.domain.subscribe;

import java.util.List;

public interface SubscribeDao {
	public void insert(Subscribe subscribe);
	public List<Subscribe> findAll();
	public Subscribe findById(Integer subscribeId);
	public void update(Subscribe subscribe);
	public void deleteById(Integer subscribeId);

}
