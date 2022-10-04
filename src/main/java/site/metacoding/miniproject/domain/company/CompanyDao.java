package site.metacoding.miniproject.domain.company;

import java.util.List;

public interface CompanyDao {
	public void insert(Company company);
	public List<Company> findAll();
	public Company findById(Integer companyId);
	public void update(Company company);
	public void deleteById(Integer id);

}
