package site.metacoding.miniproject.service.company;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoard;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.domain.personal.Personal;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.domain.users.UsersDao;
import site.metacoding.miniproject.web.dto.request.CompanyUpdateDto;
import site.metacoding.miniproject.web.dto.request.CompanyUserUpdateDto;
import site.metacoding.miniproject.web.dto.request.JobPostingBoardInsertDto;
import site.metacoding.miniproject.web.dto.request.LoginDto;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;
import site.metacoding.miniproject.web.dto.response.CompanyAddressDto;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingBoardDto;
import site.metacoding.miniproject.web.dto.response.SignedDto;

@Service
@RequiredArgsConstructor
public class CompanyService {
	
	private final JobPostingBoardDao jobPostingBoardDao;
	private final CompanyDao companyDao;
	private final UsersDao userDao;

	public CompanyAddressDto findByAddress(Integer companyId) {
		return companyDao.findByAddress(companyId);
	}
	public CompanyInfoDto findCompanyInfo(Integer companyId) {
		return companyDao.companyInfo(companyId);
	}

	
	// 회사정보변경 (user, companyDetail, company)
	@Transactional(rollbackFor = Exception.class)
	public void updateCompany(Integer userId,Integer companyId, CompanyUpdateDto companyUpdateDto) {
		Users companyUserPS = userDao.findById(userId);
		companyUserPS.update(companyUpdateDto);
		userDao.update(companyUserPS);
		
		Company companyPS = companyDao.findById(companyId);
		companyPS.updateCompany(companyUpdateDto);
		companyDao.update(companyPS);

	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public void insertJobPostingBoard(Integer companyId, JobPostingBoardInsertDto insertDto) {
		JobPostingBoard jobPostingBoard = new JobPostingBoard(insertDto);
		jobPostingBoardDao.insert(jobPostingBoard);
		
		Integer companyId = jobPostingBoard.getCompanyId();
		Integer jobPostingBoardCategoryId = jobPostingBoard.getJobPostingBoardCategoryId();
		Integer jobPostingBoardCareerId = jobPostingBoard.getJobPostingBoardCareerId();
		insertDto.setCompanyId(companyId);
		insertDto.setJobPostingBoardCategoryId(jobPostingBoardCategoryId);
		insertDto.setJobPostingBoardCareerId(jobPostingBoardCareerId);

	}
	
	//채용공고 리스트 
	public List<CompanyJobPostingBoardDto> findAllJobpostingBoard() {
		return jobPostingBoardDao.findJobpostingBoard();
	}
}