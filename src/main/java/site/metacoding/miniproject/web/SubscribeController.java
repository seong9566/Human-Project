package site.metacoding.miniproject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.config.handler.exception.ApiException;
import site.metacoding.miniproject.config.handler.exception.NormalException;
import site.metacoding.miniproject.service.Users.SubscribeService;
import site.metacoding.miniproject.web.dto.response.ResponseDto;
import site.metacoding.miniproject.web.dto.response.SignedDto;

@Controller
@RequiredArgsConstructor
public class SubscribeController {

	private final SubscribeService subscribeService;
	private final HttpSession session;

	@GetMapping("/subscribe/{companyId}")
	public @ResponseBody ResponseDto<?> subscribeToCompany(@PathVariable Integer companyId) {
		SignedDto<?> signedDto = (SignedDto<?>) session.getAttribute("principal");
		if (signedDto == null) {
			throw new ApiException("로그인 후 구독해주세요!");
		}
		System.out.println(companyId);
		subscribeService.subscribeToCompany(signedDto, companyId);
		return new ResponseDto<>(1, "success", null);
	}
}