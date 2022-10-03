package site.metacoding.miniproject.domain.likes;

import java.util.List;

public interface LikesDao {
	public void insert(Likes likes);
	public List<Likes> findAll();
	public Likes findById(Integer id);
	public void update(Likes likes);
	public void deleteById(Integer id);

}
