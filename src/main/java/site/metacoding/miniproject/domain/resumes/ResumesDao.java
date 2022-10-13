package site.metacoding.miniproject.domain.resumes;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.DetailResumesDto;

public interface ResumesDao {
	
	// 이력서 작성 하기
	public void insert(Resumes resumes);
	
	// 이력서 상세 보기	
	public DetailResumesDto resumesById(Integer resumesId);
	
	// 이력서 수정
	public Resumes findById(Integer resumesId);
	public void update(Resumes resumes);
	
	
	public List<Resumes> findAll();	
	
	public void deleteById(Integer resumesId);
}
