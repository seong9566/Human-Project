package site.metacoding.miniproject.service.company;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.domain.users.UsersDao;
import site.metacoding.miniproject.web.dto.request.CompanyUserUpdateDto;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingBoardDto;

@Service
@RequiredArgsConstructor

public class CompanyService {
	
	private final JobPostingBoardDao jobPostingBoardDao;
	private final CompanyDao companyDao;
	private final UsersDao userDao;
	
	public CompanyInfoDto findCompanyInfo(Integer companyId) {
		return companyDao.companyInfo(companyId);
	}
	
	public void updateCompanyUser(Integer userId,CompanyUserUpdateDto companyUserUpdateDto) {
		Users companyUserPS = userDao.findById(userId);
		companyUserPS.updateCompanyUser(companyUserUpdateDto);
		userDao.update(companyUserPS);
	}
	
	
	
	//채용공고 리스트 
	public List<CompanyJobPostingBoardDto> findAllJobpostingBoard() {
		return jobPostingBoardDao.findJobpostingBoard();
	}
}