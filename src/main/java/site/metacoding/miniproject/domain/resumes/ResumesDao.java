package site.metacoding.miniproject.domain.resumes;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import site.metacoding.miniproject.web.dto.request.InsertRecommendDto;
import site.metacoding.miniproject.web.dto.response.CompanyMainDto;
import site.metacoding.miniproject.web.dto.response.DetailResumesDto;
import site.metacoding.miniproject.web.dto.response.ResumesPagingDto;

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
	
	// 이력서 삭제
	public void deleteById(Integer resumesId);	
	
	// 이력서 전체 목록 보기
	public List<CompanyMainDto> findAll(int startNum);	
	
	// 페이징
	public ResumesPagingDto resumesPaging(@Param("page") Integer page, @Param("keyword") String keyword);
	
	// 검색 결과 목록 보기
	public List<CompanyMainDto> findSearch(@Param("startNum") int startNum, @Param("keyword") String keyword);

	// 좋아요 이력서 추가
	public void insertLike(InsertRecommendDto insertRecommendDto);
	
}
