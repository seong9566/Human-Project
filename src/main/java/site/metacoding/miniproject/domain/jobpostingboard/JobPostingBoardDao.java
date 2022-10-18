package site.metacoding.miniproject.domain.jobpostingboard;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.JobPostingBoardDetailDto;

import org.apache.ibatis.annotations.Param;

import site.metacoding.miniproject.web.dto.response.JobPostingBoardListDto;
import site.metacoding.miniproject.web.dto.response.ListByCategoryDto;
import site.metacoding.miniproject.web.dto.response.PagingDto;
import site.metacoding.miniproject.web.dto.response.PersonalMainDto;

public interface JobPostingBoardDao {
	public void insert(JobPostingBoard jobPostingBoard);
	
	public JobPostingBoard findById(Integer jobPostingBoardId);
	public void update(JobPostingBoard jobPostingBoard);
	public void deleteById(Integer jobPostingBoardId);
	
	// 회사가 작성한 채용공고 목록 보기
	public List<JobPostingBoardListDto> jobPostingBoardList(Integer companyId);
	
	//채용공고 자세히 보기 
	public JobPostingBoardDetailDto findByDetail(Integer jobPostingBoardId);

	// 채용공고 리스트
	public List<PersonalMainDto> findAll(int startNum);
	
	// 페이징
	public PagingDto jobPostingBoardPaging(@Param("page") Integer page, @Param("keyword") String keyword);

	// 검색 결과 리스트
	public List<PersonalMainDto> findSearch(@Param("startNum") int startNum, @Param("keyword") String keyword);

	// 카테고리별 목록보기	
	public List<ListByCategoryDto> findCategory(Integer id);
}
