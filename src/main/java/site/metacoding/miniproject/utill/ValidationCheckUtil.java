package site.metacoding.miniproject.utill;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.util.ObjectUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import site.metacoding.miniproject.config.handler.exception.ValCheckException;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;

public class ValidationCheckUtil{
	
	public static Map<String, String> valCheckToJoinPersonal(PersonalJoinDto joinDto) {
		
	    // 검증 오류 결과 보관
	    Map<String, String> errors = new HashMap<>();
	    Matcher matcher;
	    // 검증 로직
	    if (ObjectUtils.isEmpty(joinDto.getLoginId())) {
	        errors.put("id", "아이디를 입력하셔야합니다.");
	    }
	    
//	    if (!ObjectUtils.isEmpty() 
//	        && !ObjectUtils.isEmpty(memberService.getMemberById(member.getId()))) {
//	        errors.put("id", "이미 존재하는 아이디입니다");
//	    }
	    
	    Boolean passwordCheck = Pattern.matches("^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,25}", joinDto.getLoginPassword());
	    if (ObjectUtils.isEmpty(joinDto.getLoginPassword())
	            || (!passwordCheck)) {
	        errors.put("password", "패스워드는 대문자, 소문자, 특수문자가 적어도 하나씩은 있어야 하며 최소 8자리여야 하며 최대 25자리까지 가능합니다.");
	    }
	    
	    Boolean phoneNumberCheck = Pattern.matches("\\d{3}-\\d{3,4}-\\d{4}$", joinDto.getPersonalPhoneNumber());
	    if(ObjectUtils.isEmpty(joinDto.getPersonalPhoneNumber()) || (!phoneNumberCheck) ) {
	    	errors.put("personalPhoneNumber", "전화번호 입력 규격에 맞지 않습니다. ex) 010-0000-0000");
	    }
	                   
//	    if (ObjectUtils.isEmpty(member.getYear())
//	            || !( >= 1900 &&  <= 2021)) {
//	        errors.put("year", "태어난 해는 1900 ~ 2021 사이 숫자여야합니다.");   
//	    }
	    
	    if(errors.isEmpty() == true) {
	    	for(String key : errors.keySet()) {
	    		System.out.println(key);
	    		//throw new ValCheckException(errors.get(key));
	    	}
	    }
	    return errors;
	}

}
