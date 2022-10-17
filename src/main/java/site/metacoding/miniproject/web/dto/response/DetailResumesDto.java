package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class DetailResumesDto {
	// personal
	private String personalName;
	private String personalEmail;
	private String personalEducation;
	private String personalPhoneNumber;
	private String personalAddress;
	
	// resumes
	private String resumesTitle;
	private String resumesPicture;
	private String resumesIntroduce;	
	private String resumesPlace;
	
	// career
	private Boolean oneYearLess;
	private Boolean twoYearOver;
	private Boolean threeYearOver;
	private Boolean fiveYearOver;
	
	// portfolio
	private String portfolioSource;
	private String portfolioFile;
	
	// category
	private Boolean categoryFrontend;
	private Boolean categoryBackend;
	private Boolean categoryDevops;
	
	private Integer personalId;
	private Integer resumesId;
	private Integer careerId;
	private Integer portfolioId;
	private Integer categoryId;
	private Integer resumesCategoryId;
	

}
