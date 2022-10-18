package site.metacoding.miniproject.web.dto.response;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ListByCategoryDto {
	// 드롭다운 리스트
	private String categoryAll;
	private Boolean categoryFrontend;
	private Boolean categoryBackend;
	private Boolean categoryDevops;
	
	// 뿌릴 값
	private Integer row;
	private String jobPostingBoardTitle;
	private Timestamp jobPostingBoardDeadline;
	
	// 이용할 값
	private Integer jobPostingBoardCategoryId;
	private Integer categoryId;
}
