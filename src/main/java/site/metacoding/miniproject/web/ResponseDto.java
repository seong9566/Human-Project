package site.metacoding.miniproject.web;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class ResponseDto<T> {
	   
	   private Integer code;
	   private String message;
	   private T data;

	}