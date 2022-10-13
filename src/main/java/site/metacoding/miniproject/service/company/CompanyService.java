package site.metacoding.miniproject.service.company;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.domain.company.detail.CompanyDetail;
import site.metacoding.miniproject.domain.company.detail.CompanyDetailDao;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.domain.users.UsersDao;
import site.metacoding.miniproject.web.dto.request.CompanyInformUpdateDto;
import site.metacoding.miniproject.web.dto.response.CompanyAddressDto;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;
import site.metacoding.miniproject.web.dto.response.CompanyJobPostingBoardDto;

@Service
@RequiredArgsConstructor
public class CompanyService {
	
	private final JobPostingBoardDao jobPostingBoardDao;
	private final CompanyDao companyDao;
	private final UsersDao userDao;
	private final CompanyDetailDao companyDetailDao;

	public CompanyAddressDto findByAddress(Integer companyId) {
		return companyDetailDao.findByAddress(companyId);
	}
	public CompanyInfoDto findCompanyInfo(Integer companyId) {
		return companyDao.companyInfo(companyId);
	}
	// 회사 정보 수정 화면 데이터 가져오기 
	public CompanyInfoDto updateFormData(Integer companyId) {
		CompanyInfoDto companyInfoPS = companyDao.companyInfo(companyId);
		return  companyInfoPS;
	}
	
	// 회사정보변경 (user, companyDetail, company)
	@Transactional
	public void updateCompanyInform(Integer userId,Integer companyDetailId, Integer companyId, CompanyInformUpdateDto companyInformUpdateDto) {
		Users companyUserPS = userDao.findById(userId);
		companyUserPS.updateCompanyUser(companyInformUpdateDto);
		userDao.update(companyUserPS);
		
		CompanyDetail companyDetailPS = companyDetailDao.findById(companyDetailId);
		companyDetailPS.UpdateCompanyDetail(companyInformUpdateDto);
		companyDetailDao.update(companyDetailPS);
		
		Company companyPS = companyDao.findById(companyId);
		companyPS.UpdateCompany(companyInformUpdateDto);
		companyDao.update(companyPS);
	}
	
	//채용공고 리스트 
	public List<CompanyJobPostingBoardDto> findAllJobpostingBoard() {
		return jobPostingBoardDao.findJobpostingBoard();
	}
}