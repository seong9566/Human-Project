package site.metacoding.miniproject.domain.category;

import java.sql.Timestamp;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.web.dto.request.InsertResumesDto;
import site.metacoding.miniproject.web.dto.request.UpdateResumesDto;

@Getter
@Setter
@NoArgsConstructor
public class Category {
	private Integer categoryId;
	private Boolean categoryFrontend;
	private Boolean categoryBackend;
	private Boolean categoryDevops;
	private Timestamp createdAt;
	
	// 이력서 작성
	public Category(InsertResumesDto insertResumesDto) {
		this.categoryFrontend = insertResumesDto.getCategoryFrontend();
		this.categoryBackend = insertResumesDto.getCategoryBackend();
		this.categoryDevops = insertResumesDto.getCategoryDevops();
	}
	
	// 이력서 수정
	public Category(UpdateResumesDto updateResumesDto) {
		this.categoryFrontend = updateResumesDto.getCategoryFrontend();
		this.categoryBackend = updateResumesDto.getCategoryBackend();
		this.categoryDevops = updateResumesDto.getCategoryDevops();
	}
}
