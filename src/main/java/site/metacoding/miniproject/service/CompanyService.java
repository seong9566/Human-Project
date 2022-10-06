package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.category.Category;
import site.metacoding.miniproject.domain.category.CategoryDao;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.domain.resumes.ResumesDao;
import site.metacoding.miniproject.web.dto.response.CompanyMainDto;

@RequiredArgsConstructor
@Service
public class CompanyService {

	private final CompanyDao companyDao;
	private final ResumesDao resumesDao;
	private final CategoryDao categoryDao;
	private final Category category;
	
	// 이력서 목록 보기
	public List<CompanyMainDto> resumesList(){
		return resumesDao.findResumesBoard();
	}
	
	// 프론트엔드 목록 보기
	
}
