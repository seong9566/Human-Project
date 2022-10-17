package site.metacoding.miniproject.domain.portfolio;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.InsertResumesDto;
import site.metacoding.miniproject.web.dto.request.UpdateResumesDto;

@Getter
@Setter
public class Portfolio {
	private Integer portfolioId;
	private String portfolioSource;
	private String portfolioFile;
	private Timestamp createdAt;
	
	// 이력서 작성
	public Portfolio(InsertResumesDto insertResumesDto) {
		this.portfolioSource = insertResumesDto.getPortfolioSource();
		this.portfolioFile = insertResumesDto.getPortfolioFile();
	}
	
	// 이력서 수정
	public Portfolio(UpdateResumesDto updateResumesDto) {
		this.portfolioSource = updateResumesDto.getPortfolioSource();
		this.portfolioFile = updateResumesDto.getPortfolioFile();
	}
	
}
