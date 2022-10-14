package site.metacoding.miniproject.service.company;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.domain.users.UsersDao;
import site.metacoding.miniproject.web.dto.request.CompanyUpdateDto;
import site.metacoding.miniproject.web.dto.request.CompanyUserUpdateDto;
import site.metacoding.miniproject.web.dto.response.CompanyAddressDto;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingBoardDto;

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
	//채용공고 리스트 
	public List<CompanyJobPostingBoardDto> findAllJobpostingBoard() {
		return jobPostingBoardDao.findJobpostingBoard();
	}
}