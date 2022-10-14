package site.metacoding.miniproject.domain.company.detail;

import java.util.List;

import site.metacoding.miniproject.web.dto.response.CompanyAddressDto;

public interface CompanyDetailDao {
	public List<CompanyDetail> findAll();

	public CompanyDetail findById(Integer id);

	public void update(CompanyDetail companyDetail);

	public void deleteById(Integer id);

	public Integer insert(CompanyDetail companyDetail);
	

}
