package site.metacoding.miniproject.domain.jobpostingboard;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import site.metacoding.miniproject.web.dto.response.JobPostingBoardListDto;
import site.metacoding.miniproject.web.dto.response.JobPostingBoardPagingDto;
import site.metacoding.miniproject.web.dto.response.PersonalMainDto;

public interface JobPostingBoardDao {
	public void insert(JobPostingBoard jobPostingBoard);
	
	public JobPostingBoard findById(Integer jobPostingBoardId);
	public void update(JobPostingBoard jobPostingBoard);
	public void deleteById(Integer jobPostingBoardId);
	
	// 회사가 작성한 채용공고 목록 보기
	public List<JobPostingBoardListDto> jobPostingBoardList(Integer companyId);
	
	// 채용공고 리스트
	public List<PersonalMainDto> findAll(int startNum);
	
	// 페이징
	public JobPostingBoardPagingDto jobPostingBoardPaging(@Param("page") Integer page, @Param("keyword") String keyword);

	// 검색 결과 리스트
	public List<PersonalMainDto> findSearch(@Param("startNum") int startNum, @Param("keyword") String keyword);
}
