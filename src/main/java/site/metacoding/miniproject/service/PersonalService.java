package site.metacoding.miniproject.service;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.category.Category;
import site.metacoding.miniproject.domain.category.CategoryDao;
import site.metacoding.miniproject.domain.personal.Personal;
import site.metacoding.miniproject.domain.personal.PersonalDao;
import site.metacoding.miniproject.domain.personal.detail.PersonalDetail;
import site.metacoding.miniproject.domain.personal.detail.PersonalDetailDao;
import site.metacoding.miniproject.web.dto.request.UpdatePersonalsDto;
import site.metacoding.miniproject.web.dto.response.InsertPersonalsDto;

@RequiredArgsConstructor
@Service
public class PersonalService {
	
	private final PersonalDao personalDao;
	private final PersonalDetailDao personalDetailDao;
	private final CategoryDao categoryDao;
	
	// findAll - 존재하지 않음. 
	
	// 개인 정보 작성
	public void insertPersonals(InsertPersonalsDto insertPersonalsDto) {
		personalDao.insert(insertPersonalsDto.toEntity());
		personalDetailDao.insert(insertPersonalsDto.toEntity());
		categoryDao.insert(insertPersonalsDto.toEntity());
	}

	// 개인 정보 상세보기
	public Personal findByPersonal(Integer personalId) {
		return personalDao.findById(personalId);
	}	
	public PersonalDetail findByPersonalDetail(Integer personalId) {
		return personalDetailDao.findById(personalId);
	}
	public Category findByCategory(Integer categoryId) {
		return categoryDao.findById(categoryId);
	}
	
	// 개인 정보 수정
	public void updatePersonal(Integer personalId, Integer categoryId, UpdatePersonalsDto updatePersonalsDto) {		
		PersonalDetail personalDetailPS = personalDetailDao.findById(personalId);
		personalDetailPS.updatePersonalDetail(updatePersonalsDto);
		personalDetailDao.update(personalDetailPS);
		
		Category categoryPS = categoryDao.findById(categoryId);
		categoryPS.updateCategory(updatePersonalsDto);
		categoryDao.update(categoryPS);
	}
	
	// 개인 정보 삭제
	public void deletePersonals(Integer personalId) {
		personalDao.deleteById(personalId);
		personalDetailDao.deleteById(personalId);
	}

}
