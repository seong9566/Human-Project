package site.metacoding.miniproject.domain.company.board;

import java.util.List;

public interface CompanyBoardDao {
	public void insert(CompanyBoard companyBoard);
	public List<CompanyBoard> findAll();
	public CompanyBoard findById(Integer id);
	public void update(CompanyBoard companyBoard);
	public void deleteById(Integer id);

}
