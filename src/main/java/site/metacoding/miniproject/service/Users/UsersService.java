package site.metacoding.miniproject.service.Users;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.company.Company;
import site.metacoding.miniproject.domain.company.CompanyDao;
import site.metacoding.miniproject.domain.personal.Personal;
import site.metacoding.miniproject.domain.personal.PersonalDao;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.domain.users.UsersDao;
import site.metacoding.miniproject.web.dto.request.LoginDto;
import site.metacoding.miniproject.web.dto.request.PersonalJoinDto;
import site.metacoding.miniproject.web.dto.response.SignedDto;

@Service
@RequiredArgsConstructor
public class UsersService {
	
	private final UsersDao usersDao;
	private final CompanyDao companyDao;
	private final PersonalDao personalDao;
	
	public SignedDto<?> login(LoginDto loginDto) {
		String loginId = loginDto.getLoginId();
		String loginPassword = loginDto.getLoginPassword();
		SignedDto<?> signedDto;
		Users userinfo = usersDao.findByIdAndPassword(loginId, loginPassword);
		if(userinfo.getPersonalId() != null) {
			Personal personal = personalDao.findById(userinfo.getPersonalId());
			signedDto = new SignedDto<>(userinfo.getLoginId(), userinfo.getLoginPassword(), personal);
		}else {
			Company company = companyDao.findById(userinfo.getCompanyId());
			signedDto = new SignedDto<>(userinfo.getLoginId(), userinfo.getLoginPassword(), company);
		}
		

		return signedDto;
	}
	
	@Transactional(rollbackFor = RuntimeException.class)
	public void joinPersonal(PersonalJoinDto joinDto) {
		Personal personal = new Personal(joinDto);
		Integer personalId = personalDao.insert(personal);
		System.out.println(personalId);
		if(personalId != null) {
			throw new RuntimeException();
		}
		//PersonalDetail personalDetail = new PersonalDetail(joinDto);
	}
}
