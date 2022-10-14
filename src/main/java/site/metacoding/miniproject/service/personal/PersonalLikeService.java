package site.metacoding.miniproject.service.personal;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.alarm.Alarm;
import site.metacoding.miniproject.domain.alarm.AlarmDao;
import site.metacoding.miniproject.domain.like.personalike.PersonalLike;
import site.metacoding.miniproject.domain.like.personalike.PersonalLikesDao;
import site.metacoding.miniproject.domain.resumes.ResumesDao;
import site.metacoding.miniproject.utill.AlarmEnum;
import site.metacoding.miniproject.web.dto.request.InsertRecommendDto;
import site.metacoding.miniproject.web.dto.request.PersonalLikeDto;

@RequiredArgsConstructor
@Service
public class PersonalLikeService {
	private final PersonalLikesDao personalLikesDao;
	private final ResumesDao resumesDao;
	private final AlarmDao alarmDao;

	@Transactional(rollbackFor = RuntimeException.class)
	public void 좋아요(Integer resumesId, Integer companyId) {

		HashMap<String, Integer> map = new HashMap<>();

		PersonalLike personalLike = new PersonalLike(resumesId, companyId);
		personalLikesDao.insert(personalLike);

		map.put(AlarmEnum.AlarmType.ALARMAPPLYID, personalLike.getPersonalLikeId());
		alarmDao.insert(null);
	}

	@Transactional(rollbackFor = RuntimeException.class)
	public void 좋아요취소(Integer resumesId, Integer companyId) {
		PersonalLike personalLike = new PersonalLike(resumesId, companyId);
		personalLikesDao.deleteById(personalLike);

	}

	public List<PersonalLikeDto> 좋아요이력서() {
		List<PersonalLikeDto> PersonalLikeDtoList = personalLikesDao.findAll();
		return PersonalLikeDtoList;
	}

	public void 좋아요이력서추가(InsertRecommendDto insertRecommendDto) {
		resumesDao.insertLike(insertRecommendDto);
	}

	public PersonalLike 좋아요확인(Integer companyId, Integer resumesId) {
		PersonalLike personalLike = new PersonalLike(companyId, resumesId);
		PersonalLike companyLike2 = personalLikesDao.findById(personalLike);
		return companyLike2;
	}

}
