package site.metacoding.miniproject.domain.career;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Career {
	  private Integer careerId;
	  private Boolean oneYearLess;
	  private Boolean twoYearOver;
	  private Boolean threeYearOver;
	  private Boolean fiveYearOver;
	  private Timestamp createdAt;
}
