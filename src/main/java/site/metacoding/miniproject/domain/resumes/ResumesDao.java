package site.metacoding.miniproject.domain.resumes;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.DetailResumesDto;

public interface ResumesDao {
	
	// 이력서 작성 하기
	public void insert(Resumes resumes);
	
	// 내가 작성한 이력서 목록 보기
	public List<Resumes> findMyresumesAll(Integer personalId);	
	
	// 이력서 상세 보기	
	public DetailResumesDto resumesById(Integer personalId);
	
	// 이력서 수정
	public Resumes findById(Integer resumesId);
	public void update(Resumes resumes);
	
	
	public List<Resumes> findAll();	
	
	public void deleteById(Integer resumesId);
}
