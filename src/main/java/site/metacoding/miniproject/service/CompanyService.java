package site.metacoding.miniproject.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.resumes.ResumesDao;
import site.metacoding.miniproject.web.dto.response.CompanyMainDto;

@RequiredArgsConstructor
@Service
public class CompanyService {

	private final ResumesDao resumesDao;
	
	// 이력서 목록 보기
	public List<CompanyMainDto> resumesList(){
		return resumesDao.findResumesBoard();
	}
}
