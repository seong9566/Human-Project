package site.metacoding.miniproject.web.dto;


public class ResponseDto<T> {
	
	private Integer code;
	private String message;
	private T data;

}
