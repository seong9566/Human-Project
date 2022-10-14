package site.metacoding.miniproject.service.personal;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.career.Career;
import site.metacoding.miniproject.domain.career.CareerDao;
import site.metacoding.miniproject.domain.category.Category;
import site.metacoding.miniproject.domain.category.CategoryDao;
import site.metacoding.miniproject.domain.personal.Personal;
import site.metacoding.miniproject.domain.personal.PersonalDao;
import site.metacoding.miniproject.domain.portfolio.Portfolio;
import site.metacoding.miniproject.domain.portfolio.PortfolioDao;
import site.metacoding.miniproject.domain.resumes.Resumes;
import site.metacoding.miniproject.domain.resumes.ResumesDao;
import site.metacoding.miniproject.web.dto.request.InsertResumesDto;
import site.metacoding.miniproject.web.dto.request.UpdateResumesDto;
import site.metacoding.miniproject.web.dto.response.DetailResumesDto;
import site.metacoding.miniproject.web.dto.response.PersonalInfoDto;

@Service
@RequiredArgsConstructor
public class PersonalService {
	
	private final PersonalDao personalDao;
	private final ResumesDao resumesDao;
	private final CategoryDao categoryDao;
	private final PortfolioDao portfolioDao;
	private final CareerDao careerDao;
	
	// 이력서 작성 하기
	@Transactional(rollbackFor = RuntimeException.class)
	public void insertResumes(Integer personalId, InsertResumesDto insertResumesDto) {
		
		Category category = new Category(insertResumesDto);
		categoryDao.insert(category);
		
		Portfolio portfolio = new Portfolio(insertResumesDto);
		portfolioDao.insert(portfolio);
		
		Career career = new Career(insertResumesDto);
		careerDao.insert(career);		
		
		
				
		Resumes resumes = new Resumes(insertResumesDto);
		resumes.setPersonalId(personalId);
		System.out.println(personalId);
		resumes.setCareerId(career.getCareerId());
		resumes.setPortfolioId(portfolio.getPortfolioId());
		resumes.setResumesCategoryId(category.getCategoryId());
		resumesDao.insert(resumes);		
		
	}
	
	public PersonalInfoDto personalInfoById(Integer personalId) {
		return personalDao.personalInfoById(personalId);
	}
	
	// 내가 작성한 이력서 목록 보기
	public List<Resumes> myresumesAll(Integer personalId){
		return resumesDao.findMyresumesAll(personalId);
	}
	
	// 이력서 상세 보기
	public DetailResumesDto resumesById(Integer personalId) {
		return resumesDao.resumesById(personalId);
	}
	
	// 이력서 수정 하기
	public void updateResumes(Integer resumesId, UpdateResumesDto updateResumesDto) {
		Resumes resumesPS = updateResumesDto.toEntity();
		resumesPS.setResumesId(resumesId);
		resumesDao.update(resumesPS);
	}
	
	// 전체 이력서 목록 보기
	public List<Resumes> resumesAll(){
		return resumesDao.findAll();
	}
}
