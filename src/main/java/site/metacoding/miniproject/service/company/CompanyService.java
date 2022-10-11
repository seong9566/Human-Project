package site.metacoding.miniproject.service.company;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;

@Service
@RequiredArgsConstructor

public class CompanyService {
	
	private final JobPostingBoardDao jobPostingBoardDao;
	private final CompanyDao companyDao;

	
	public CompanyInfoDto findCompanyInfo(Integer companyId) {
		return companyDao.companyInfo(companyId);
	}
}