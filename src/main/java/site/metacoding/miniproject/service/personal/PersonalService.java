package site.metacoding.miniproject.service.personal;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.domain.personal.Personal;
import site.metacoding.miniproject.domain.personal.PersonalDao;
import site.metacoding.miniproject.domain.personal.detail.PersonalDetail;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingDto;

@Service
@RequiredArgsConstructor
public class PersonalService {
	
	private final PersonalDao personalDao;
	private final JobPostingBoardDao jobPostingBoardDao;
	
	public void personalJoin(PersonalJoinDto joinDto) {

	}
	
	// 채용공고 모두 보기 
	public List<CompanyJobPostingDto> findJobpostingBoard() {
		return jobPostingBoardDao.findJobpostingBoard();
	}
	
	// 채용공고 상세 보기 
	public CompanyJobPostingDto findJobPostingBoardOne(Integer jobPostingBoardId){
		return jobPostingBoardDao.findById(jobPostingBoardId);
	}
	
	
}
