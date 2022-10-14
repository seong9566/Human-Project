package site.metacoding.miniproject.service.personal;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.personal.detail.PersonalDetailDao;
import site.metacoding.miniproject.domain.resumes.Resumes;
import site.metacoding.miniproject.domain.resumes.ResumesDao;
import site.metacoding.miniproject.web.dto.request.InsertResumesDto;
import site.metacoding.miniproject.web.dto.request.UpdateResumesDto;
import site.metacoding.miniproject.web.dto.response.DetailResumesDto;
import site.metacoding.miniproject.web.dto.response.PersonalInfoDto;

@Service
@RequiredArgsConstructor
public class PersonalService {
	
	private final ResumesDao resumesDao;

	// 개인 정보 보기
	
	
	// 이력서 작성 하기
	public void insertResumes(InsertResumesDto insertResumesDto) {
		Resumes resumes = insertResumesDto.toEntity();
		resumesDao.insert(resumes);
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

	// 이력서 목록 보기
	public List<Resumes> resumesAll(){
		return resumesDao.findAll();
	}

}
