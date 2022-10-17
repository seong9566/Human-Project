package site.metacoding.miniproject.web;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Map;

import org.junit.jupiter.api.Test;

import site.metacoding.miniproject.utill.ValidationCheckUtil;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;

public class UserControllerTest {
	
	@Test
	public void joinPersonal_test() {
		PersonalJoinDto joinDto = new PersonalJoinDto();
		joinDto.setLoginId("user1");
		joinDto.setLoginPassword("Qwer1234!!!");
		joinDto.setPersonalPhoneNumber("000-1111-4444");
		
		Map<String, String> er = ValidationCheckUtil.valCheckToJoinPersonal(joinDto);
		for (String key : er.keySet()) {
			System.out.println(key);
		}
		
		assertEquals(null, joinDto);
		
		
	}

}
