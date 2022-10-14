package site.metacoding.miniproject.domain.personal;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.PersonalInfoDto;
import site.metacoding.miniproject.web.dto.response.PersonalUpdateFormDto;
import site.metacoding.miniproject.web.dto.response.PersonalformDto;


public interface PersonalDao {
	public void insert(Personal personal);
	public List<Personal> findAll();
	
	
	public void deleteById(Integer id);
	
	// 이력서 작성 폼에 개인정보 불러오기
	public PersonalInfoDto personalInfoById(Integer personalId);
	
	// 회원가입할때 작성한 개인정보 불러오기
	public PersonalformDto personalformById(Integer personalId);
	
	//회원가입 수정
	public void update(Personal personal);
	
	public Personal findById(Integer personalId); 
	
	//회원가입 수정 폼에 개인 정보 불러오기
	public PersonalUpdateFormDto personalUpdateById(Integer personalId);
}
