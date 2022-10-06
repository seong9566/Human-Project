package site.metacoding.miniproject.domain.company;

import java.util.List;

import site.metacoding.miniproject.domain.category.Category;

public interface CompanyDao {
	public void insert(Company company);
	public List<Company> findAll();
	public Company findById(Integer id);
	public void update(Company company);
	public void deleteById(Integer id);
}