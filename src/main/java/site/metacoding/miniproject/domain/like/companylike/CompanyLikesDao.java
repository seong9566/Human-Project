package site.metacoding.miniproject.domain.like.companylike;

import java.util.List;

public interface CompanyLikesDao {
	public void insert(CompanyLike companyLike);
	public List<CompanyLike> findAll();
	public CompanyLike findById(Integer id);
	public void update(CompanyLike companyLike);
	public void deleteById(Integer id);

}
