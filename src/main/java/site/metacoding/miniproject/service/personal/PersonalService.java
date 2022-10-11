package site.metacoding.miniproject.service.personal;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.personal.Personal;
import site.metacoding.miniproject.domain.personal.PersonalDao;
import site.metacoding.miniproject.domain.personal.detail.PersonalDetail;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;

@Service
@RequiredArgsConstructor
public class PersonalService {
	
	private final PersonalDao personalDao;
	
	public void personalJoin(PersonalJoinDto joinDto) {
		

	}
	
}
