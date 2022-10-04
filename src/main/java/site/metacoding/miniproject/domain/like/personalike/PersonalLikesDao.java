package site.metacoding.miniproject.domain.like.personalike;

import java.util.List;

public interface PersonalLikesDao {
	public void insert(PersonalLike personalLike);
	public List<PersonalLike> findAll();
	public PersonalLike findById(Integer id);
	public void update(PersonalLike personalLike);
	public void deleteById(Integer id);

}
