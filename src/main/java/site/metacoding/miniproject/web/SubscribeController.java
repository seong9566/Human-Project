package site.metacoding.miniproject.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.config.handler.exception.ApiException;
import site.metacoding.miniproject.config.handler.exception.NormalException;
import site.metacoding.miniproject.domain.subscribe.Subscribe;
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
		System.out.println(companyId);
		SignedDto<?> signedDto = (SignedDto<?>) session.getAttribute("principal");

		if (signedDto == null) {
			throw new ApiException("로그인 후 구독해주세요!");
		}

		List<Subscribe> subscribe = new ArrayList<>();

		subscribe.add(subscribeService.subscribeToCompany(signedDto, companyId));

		session.setAttribute("subscribe", subscribe);
		return new ResponseDto<>(1, "구독 성공!", null);
	}

	@DeleteMapping("/subscribe/{subscribeId}")
	public @ResponseBody ResponseDto<?> subscribeCancelToCompany(@PathVariable Integer subscribeId) {
		SignedDto<?> signedDto = (SignedDto<?>) session.getAttribute("principal");
		if (signedDto == null) {
			throw new ApiException("잘못된 접근입니다.");
		}
		subscribeService.subscribeToCompany(signedDto, companyId);
		return new ResponseDto<>(1, "success", null);
	}
}