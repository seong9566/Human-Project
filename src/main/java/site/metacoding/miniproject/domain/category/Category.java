package site.metacoding.miniproject.domain.category;

import java.sql.Timestamp;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import site.metacoding.miniproject.domain.jobpostingboard.JobPostingBoard;
import site.metacoding.miniproject.web.dto.request.JobPostingBoardInsertDto;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;

@Getter
@Setter
@NoArgsConstructor
public class Category {
	private Integer categoryId;
	private Boolean categoryFrontend;
	private Boolean categoryBackend;
	private Boolean categoryDevops;
	private Timestamp createdAt;
	
	//채용 공고 작성
	public Category(JobPostingBoardInsertDto insertDto){
		this.categoryFrontend = insertDto.getCategoryFrontend();
		this.categoryBackend = insertDto.getCategoryBackend();
		this.categoryDevops = insertDto.getCategoryDevops();
	}
	
	
}
