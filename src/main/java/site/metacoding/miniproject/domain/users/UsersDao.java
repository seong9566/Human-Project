package site.metacoding.miniproject.domain.users;

import java.util.List;

public interface UsersDao {
	public void insert(Users users);
	public List<Users> findAll();
	public Users findById(Integer id);
	public void update(Users users);
	public void deleteById(Integer id);

}
