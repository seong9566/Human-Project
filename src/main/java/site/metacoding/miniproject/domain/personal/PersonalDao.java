package site.metacoding.miniproject.domain.personal;

import java.util.List;

import site.metacoding.miniproject.web.dto.request.PersonalUpdateDto;
import site.metacoding.miniproject.web.dto.response.PersonalAddressDto;
import site.metacoding.miniproject.web.dto.response.PersonalFormDto;
import site.metacoding.miniproject.web.dto.response.PersonalInfoDto;


public interface PersonalDao {
	public void insert(Personal personal);
	public List<Personal> findAll();
	public Personal findById(Integer personalId);


	public void deleteById(Integer id);
	
	// 개인정보 나의 정보페이지에 불러오기
	public PersonalFormDto personalformById(Integer personalId);
	
	
	// 회원가입수정때 보여줄 개인정보
	public PersonalUpdateDto personalUpdateById(Integer personalId);
	
	// 회원가입 수정
	public void update(Personal personal);
	//public void updateById(PersonalUpdateDto personalUpdateDto);
	
	// 주소 
	public PersonalAddressDto personalAddressById(Integer personalId);

	public PersonalInfoDto personalInfoById(Integer personalId);


	
	// 이력서 작성 폼에 개인정보 불러오기



}
