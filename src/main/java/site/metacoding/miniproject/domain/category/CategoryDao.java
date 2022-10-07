package site.metacoding.miniproject.domain.category;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.InsertPersonalsDto;

public interface CategoryDao {
	public void insert(InsertPersonalsDto insertPersonalsDto);
	public List<Category> findAll();
	public Category findById(Integer categoryId);
	public void update(Category category);
	public void deleteById(Integer categoryId);
}
