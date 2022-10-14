package site.metacoding.miniproject.domain.portfolio;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Portfolio {
	private Integer portfolioId;
	private String portfolidSource;
	private String portfolioFile;
	private Timestamp createdAt;
}
