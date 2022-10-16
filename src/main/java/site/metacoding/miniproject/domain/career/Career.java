package site.metacoding.miniproject.domain.career;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.JobPostingBoardInsertDto;

@Getter
@Setter
public class Career {
	  private Integer careerId;
	  private Boolean oneYearLess;
	  private Boolean twoYearOver;
	  private Boolean threeYearOver;
	  private Boolean fiveYearOver;
	  private Timestamp createdAt;
	  
	  public Career(JobPostingBoardInsertDto joinDto) {
		  this.oneYearLess = joinDto.getOneYearLess();
		  this.twoYearOver = joinDto.getTwoYearOver();
		  this.threeYearOver = joinDto.getThreeYearOver();
		  this.fiveYearOver = joinDto.getFiveYearOver();
	  }
}
