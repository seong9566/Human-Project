package site.metacoding.miniproject.domain.career;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

import site.metacoding.miniproject.web.dto.request.InsertResumesDto;

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

}
