package site.metacoding.miniproject.domain.company;

import java.io.Serializable;
import java.sql.Timestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.CompanyJoinDto;

@Getter
@Setter
@NoArgsConstructor
public class Company implements Serializable {
	private Integer companyId;
	private String companyName;
	private Integer companyCategoryId;
	private Timestamp createdAt;

	private static final long serialVersionUID = 7364337982660485087L;

	public Company(CompanyJoinDto joinDto) {
		this.companyName = joinDto.getCompanyName();
		this.companyCategoryId = joinDto.getCategoryId();
	}
}
