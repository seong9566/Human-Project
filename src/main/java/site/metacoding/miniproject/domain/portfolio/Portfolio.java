package site.metacoding.miniproject.domain.portfolio;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

import site.metacoding.miniproject.web.dto.request.InsertResumesDto;

@Getter
@Setter
public class Portfolio {
	private Integer portfolioId;
	private String portfolioSource;
	private String portfolioFile;
	private Timestamp createdAt;
	
	public Portfolio(InsertResumesDto insertResumesDto) {
		this.portfolioSource = insertResumesDto.getPortfolidSource();
		this.portfolioFile = insertResumesDto.getPortfolioFile();
	}
  
}
