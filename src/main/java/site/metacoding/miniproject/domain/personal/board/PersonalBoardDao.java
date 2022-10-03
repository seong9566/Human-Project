package site.metacoding.miniproject.domain.personal.board;

import java.util.List;

public interface PersonalBoardDao {
	public void insert(PersonalBoard personalBoard);
	public List<PersonalBoard> findAll();
	public PersonalBoard findById(Integer id);
	public void update(PersonalBoard personalBoard);
	public void deleteById(Integer id);

}
