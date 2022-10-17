package site.metacoding.miniproject.domain.personal;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.PersonalInfoDto;

public interface PersonalDao {
	public void insert(Personal personal);
	public List<Personal> findAll();
	public Personal findById(Integer personalId);
	public void update(Personal personal);
	public void deleteById(Integer id);
	
	// 이력서 작성 폼에 개인정보 불러오기
	public PersonalInfoDto personalInfoById(Integer personalId);

}
