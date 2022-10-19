package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyBestDto {
	private String companyPicture;
	private String companyName;
	private Integer personalId;
	private Integer count;
	private Integer rank;

}
