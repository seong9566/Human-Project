package site.metacoding.miniproject.service.personal;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.personal.detail.PersonalDetailDao;
import site.metacoding.miniproject.domain.resumes.Resumes;
import site.metacoding.miniproject.domain.resumes.ResumesDao;
import site.metacoding.miniproject.web.dto.request.InsertResumesDto;
import site.metacoding.miniproject.web.dto.response.PersonalInfoDto;

@Service
@RequiredArgsConstructor
public class PersonalService {
	
	private final ResumesDao resumesDao;
	private final PersonalDetailDao personalDetailDao;

	public void insertResumes(InsertResumesDto insertResumesDto) {
		Resumes resumes = insertResumesDto.toEntity();
		resumesDao.insert(resumes);
	}
	
	public PersonalInfoDto personalInfoById(Integer personalId) {
		return personalDetailDao.personalInfoById(personalId);
	}

}
