package site.metacoding.miniproject.domain.like.personalike;

import java.util.List;

import site.metacoding.miniproject.web.dto.request.PersonalLikeDto;

public interface PersonalLikesDao {
	public void insert(PersonalLike personalLike);
	public List<PersonalLikeDto> findAll();
	public PersonalLike findById(Integer personalLikeId);
	public void update(PersonalLike personalLike);
	public void deleteById(PersonalLike personalLike);
}
