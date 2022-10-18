package site.metacoding.miniproject.service.company;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;

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
import site.metacoding.miniproject.web.dto.request.JobPostingBoardUpdateDto;
import site.metacoding.miniproject.web.dto.response.CompanyAddressDto;
import site.metacoding.miniproject.web.dto.response.CompanyInfoDto;
import site.metacoding.miniproject.web.dto.response.JobPostingBoardDetailDto;
import site.metacoding.miniproject.web.dto.response.JobPostingBoardListDto;
import site.metacoding.miniproject.web.dto.response.ListByCategoryDto;
import site.metacoding.miniproject.web.dto.response.PagingDto;
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
		List<JobPostingBoardListDto> postingList = jobPostingBoardDao.jobPostingBoardList(companyId);
		// TimeStamp to String
		for (JobPostingBoardListDto deadLine : postingList) {
			Timestamp ts = deadLine.getJobPostingBoardDeadline();
			Date date = new Date();
			date.setTime(ts.getTime());
			String formattedDate = new SimpleDateFormat("yyyy년MM월dd일").format(date);
			deadLine.setFormatDeadLine(formattedDate);
		}
		return postingList;
	}

	// 채용공고 상세 보기
	public JobPostingBoardDetailDto jobPostingOne(Integer jobPostingBoardId) {
		JobPostingBoardDetailDto jobPostingPS = jobPostingBoardDao.findByDetail(jobPostingBoardId);
		Timestamp ts = jobPostingPS.getJobPostingBoardDeadline();
		Date date = new Date();
		date.setTime(ts.getTime());
		String formattedDate = new SimpleDateFormat("yyyy년MM월dd일").format(date);
		jobPostingPS.setFormatDeadLine(formattedDate);
		return jobPostingPS;
	}

	// 채용공고 수정 (jobpostingboard,career,Category)
	@Transactional(rollbackFor = Exception.class)
	public void updateJobPostingBoard(Integer jobPostingBoardId, JobPostingBoardUpdateDto updateDto) {
		// Integer categoryId,Integer careerId,
		Category category = new Category(updateDto);
		categoryDao.jobPostingUpdate(category);

		Career career = new Career(updateDto);
		careerDao.jobPostingUpdate(career);

		JobPostingBoard jobPostingBoard = new JobPostingBoard(jobPostingBoardId, updateDto);
		jobPostingBoardDao.update(jobPostingBoard);
	}

	// 채용 공고 삭제
	@Transactional(rollbackFor = Exception.class)
	public void deleteJobposting(Integer jobPostingBoardId) {
		jobPostingBoardDao.deleteById(jobPostingBoardId);
	}

	// 전체 채용공고 리스트
	public List<PersonalMainDto> findAll(int startNum) {
		return jobPostingBoardDao.findAll(startNum);
	}

	// 페이징
	public PagingDto jobPostingBoardPaging(Integer page, String keyword) {
		return jobPostingBoardDao.jobPostingBoardPaging(page, keyword);
	}

	// 검색 결과 리스트
	public List<PersonalMainDto> findSearch(Integer startNum, String keyword) {
		return jobPostingBoardDao.findSearch(startNum, keyword);
	}	
	
	// 카테고리 별 리스트 보기
	public List<ListByCategoryDto> findCategory(Integer id) {
		System.out.println(id);
		return jobPostingBoardDao.findCategory(id);
	}
	
}
