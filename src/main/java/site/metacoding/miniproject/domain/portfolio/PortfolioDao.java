package site.metacoding.miniproject.domain.portfolio;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.DetailResumesDto;

public interface PortfolioDao {
	
	public void insert(Portfolio portfolio);
	
	public DetailResumesDto resumesById(Integer portfolioId);
	
	public Portfolio findById(Integer portfolioId);
	public void update(Portfolio portfolio);
	
	
	public List<Portfolio> findAll();	
	
	public void deleteById(Integer portfolioId);
}
