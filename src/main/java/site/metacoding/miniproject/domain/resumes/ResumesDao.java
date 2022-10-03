package site.metacoding.miniproject.domain.resumes;

import java.util.List;

public interface ResumesDao {
	public void insert(Resumes resumes);
	public List<Resumes> findAll();
	public Resumes findById(Integer id);
	public void update(Resumes resumes);
	public void deleteById(Integer id);

}
