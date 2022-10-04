package site.metacoding.miniproject.web;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
public class ResponseDto<T> {

	private Integer code;
	private String message;
	private T data;

}