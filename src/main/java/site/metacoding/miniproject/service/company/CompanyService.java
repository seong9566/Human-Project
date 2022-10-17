package site.metacoding.miniproject.service.company;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.career.Career;
import site.metacoding.miniproject.domain.career.CareerDao;
import site.metacoding.miniproject.domain.category.Category;
import site.metacoding.miniproject.domain.category.CategoryDao;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoard;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoardDao;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.domain.users.UsersDao;
import site.metacoding.miniproject.web.dto.request.CompanyUpdateDto;
import site.metacoding.miniproject.web.dto.request.JobPostingBoardInsertDto;
import site.metacoding.miniproject.web.dto.response.CompanyAddressDto;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;
import site.metacoding.miniproject.web.dto.response.JobPostingBoardListDto;
import site.metacoding.miniproject.web.dto.response.JobPostingBoardPagingDto;
import site.metacoding.miniproject.web.dto.response.PersonalMainDto;

@Service
@RequiredArgsConstructor
public class CompanyService {

	private final JobPostingBoardDao jobPostingBoardDao;
	private final CategoryDao categoryDao;
	private final CareerDao careerDao;
	private final CompanyDao companyDao;
	private final UsersDao userDao;

	public CompanyAddressDto findByAddress(Integer companyId) {
		return companyDao.findByAddress(companyId);
	}

	public CompanyInfoDto findCompanyInfo(Integer companyId) {
		return companyDao.companyInfo(companyId);
	}

	// 회사정보변경 (user, company)
	@Transactional(rollbackFor = Exception.class)
	public void updateCompany(Integer userId, Integer companyId, CompanyUpdateDto companyUpdateDto) {
		Users companyUserPS = userDao.findById(userId);
		companyUserPS.update(companyUpdateDto);
		userDao.update(companyUserPS);
		Company companyPS = companyDao.findById(companyId);
		companyPS.updateCompany(companyUpdateDto);
		companyDao.update(companyPS);

	}

	// 채용공고 작성 (category,career,jobPostingboard)
	@Transactional(rollbackFor = Exception.class)
	public void insertJobPostingBoard(Integer companyId, JobPostingBoardInsertDto insertDto) {
		Category category = new Category(insertDto);
		categoryDao.insert(category);

		Career career = new Career(insertDto);
		careerDao.insert(career);

		JobPostingBoard jobPostingBoard = new JobPostingBoard(insertDto);
		jobPostingBoard.setCompanyId(companyId);
		jobPostingBoard.setJobPostingBoardCategoryId(category.getCategoryId());
		jobPostingBoard.setJobPostingBoardCareerId(career.getCareerId());
		jobPostingBoardDao.insert(jobPostingBoard);
	}

	// 채용공고 리스트
		public List<JobPostingBoardListDto> jobPostingBoardList(Integer companyId) {
			List<JobPostingBoardListDto> postingList =  jobPostingBoardDao.jobPostingBoardList(companyId);
			//TimeStamp to String
			for(JobPostingBoardListDto deadLine : postingList)
			{
				System.out.println(deadLine.getJobPostingBoardDeadline());
				Timestamp ts = deadLine.getJobPostingBoardDeadline();
				Date date = new Date();
				date.setTime(ts.getTime());
				String formattedDate = new SimpleDateFormat("yyyyMMdd").format(date);
				deadLine.setFormatDeadLine(formattedDate);
			}
			return postingList;
		}
		
	// 전체 채용공고 리스트
	public List<PersonalMainDto> findAll(int startNum) {
		return jobPostingBoardDao.findAll(startNum);
	}
	
	// 페이징
	public JobPostingBoardPagingDto jobPostingBoardPaging(Integer page, String keyword) {		
		return jobPostingBoardDao.jobPostingBoardPaging(page, keyword);
	}
	
	// 검색 결과 리스트
	public List<PersonalMainDto> findSearch(Integer startNum, String keyword) {
		return jobPostingBoardDao.findSearch(startNum, keyword);
	}
	
}

