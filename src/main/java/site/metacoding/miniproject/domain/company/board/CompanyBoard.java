package site.metacoding.miniproject.domain.company.board;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyBoard {
	private Integer companyBoardId;
	private Integer companyId;
	private String companyBoardTitle;
	private String companyBoardContent;
	private Timestamp createdAt;

}
