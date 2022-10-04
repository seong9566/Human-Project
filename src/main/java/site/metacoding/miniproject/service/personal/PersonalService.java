package site.metacoding.miniproject.service.personal;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.domain.users.UsersDao;
import site.metacoding.miniproject.web.dto.request.LoginDto;

@Service
@RequiredArgsConstructor
public class PersonalService {
	
	private final UsersDao usersDao;
	
	public Users login(LoginDto loginDto) {
		String loginId = loginDto.getLoginId();
		String loginPassword = loginDto.getLoginPassword();
		Users userinfo = usersDao.findByIdAndPassword(loginId, loginPassword);
		
		return userinfo;
	}
}
