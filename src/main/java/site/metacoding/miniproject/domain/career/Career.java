package site.metacoding.miniproject.domain.career;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.InsertResumesDto;
import site.metacoding.miniproject.web.dto.request.JobPostingBoardInsertDto;
import site.metacoding.miniproject.web.dto.request.JobPostingBoardUpdateDto;
import site.metacoding.miniproject.web.dto.request.UpdateResumesDto;

@Getter
@Setter
public class Career {
	  private Integer careerId;
	  private Boolean oneYearLess;
	  private Boolean twoYearOver;
	  private Boolean threeYearOver;
	  private Boolean fiveYearOver;
	  private Timestamp createdAt;

	  // 이력서 작성
	  public Career(InsertResumesDto insertResumesDto) {
		  this.oneYearLess = insertResumesDto.getOneYearLess();
		  this.twoYearOver = insertResumesDto.getTwoYearOver();
		  this.threeYearOver = insertResumesDto.getThreeYearOver();
		  this.fiveYearOver = insertResumesDto.getFiveYearOver();
	  }
	  
	// 이력서 수정
	  public Career(UpdateResumesDto updateResumesDto) {
		  this.oneYearLess = updateResumesDto.getOneYearLess();
		  this.twoYearOver = updateResumesDto.getTwoYearOver();
		  this.threeYearOver = updateResumesDto.getThreeYearOver();
		  this.fiveYearOver = updateResumesDto.getFiveYearOver();
	  }
	  public Career(JobPostingBoardInsertDto joinDto) {
		  this.oneYearLess = joinDto.getOneYearLess();
		  this.twoYearOver = joinDto.getTwoYearOver();
		  this.threeYearOver = joinDto.getThreeYearOver();
		  this.fiveYearOver = joinDto.getFiveYearOver();
	  }
	  
	  // 채용 공고 수정
	  public Career(JobPostingBoardUpdateDto updateDto) {
		  //this.careerId = careerId;
		  this.oneYearLess = updateDto.getOneYearLess();
		  this.twoYearOver = updateDto.getTwoYearOver();
		  this.threeYearOver = updateDto.getThreeYearOver();
		  this.fiveYearOver = updateDto.getFiveYearOver();
	  }
}
