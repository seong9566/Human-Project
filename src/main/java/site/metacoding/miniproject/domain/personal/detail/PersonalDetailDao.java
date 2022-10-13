package site.metacoding.miniproject.domain.personal.detail;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.PersonalInfoDto;

public interface PersonalDetailDao {
	public void insert(PersonalDetail personalDetail);
	public List<PersonalDetail> findAll();
	public PersonalDetail findById(Integer id);
	public void update(PersonalDetail personalDetail);
	public void deleteById(Integer id);
	
	// 이력서 작성 폼 개인정보 불러오기
	public PersonalInfoDto personalInfoById(Integer personalId);

}
