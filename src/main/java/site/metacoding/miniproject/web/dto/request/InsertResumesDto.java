package site.metacoding.miniproject.web.dto.request;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class InsertResumesDto {	
	private Boolean oneYearLess;
	private Boolean twoYearOver;
	private Boolean threeYearOver;
	private Boolean fiveYearOver;
	private String portfolidSource;
	private String portfolioFile;
	private String resumesTitle;
	private String resumesPicture;
	private String resumesIntroduce;
	private Boolean categoryFrontend;
	private Boolean categoryBackend;
	private Boolean categoryDevops;
	private String resumesPlace;
	
	private Integer CareerId;
	private Integer PortfolioId;
	private Integer resumesCategoryId;
}
