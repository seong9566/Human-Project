package site.metacoding.miniproject.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.miniproject.domain.like.companylike.CompanyLike;
import site.metacoding.miniproject.domain.like.personalike.PersonalLike;
import site.metacoding.miniproject.domain.users.Users;
import site.metacoding.miniproject.service.company.CompanyLikeService;
import site.metacoding.miniproject.service.personal.PersonalLikeService;
import site.metacoding.miniproject.web.dto.request.InsertRecommendDto;
import site.metacoding.miniproject.web.dto.request.PersonalLikeDto;
import site.metacoding.miniproject.web.dto.response.ResponseDto;
import site.metacoding.miniproject.web.dto.response.SignedDto;

@RequiredArgsConstructor
@Controller
public class LikeController {
	private final HttpSession session;
	private final PersonalLikeService personalLikeService;
	private final CompanyLikeService companyLikeService;

	@PostMapping("/personalLike/{resumesId}/likes")
	public @ResponseBody ResponseDto<?> insertLike(@PathVariable Integer resumesId) {
		// Company company = (Company) session.getAttribute("principal");
		System.out.println(resumesId);
		SignedDto<?> signedDto = (SignedDto<?>) session.getAttribute("principal");

		personalLikeService.좋아요(resumesId, signedDto);
		return new ResponseDto<>(1, "좋아요성공", null);

	}

	@DeleteMapping("/personalLike/{resumesId}/likes")
	public @ResponseBody ResponseDto<?> deleteLike(@PathVariable Integer resumesId) {
		SignedDto<?> signedDto = (SignedDto<?>) session.getAttribute("principal");
		personalLikeService.좋아요취소(resumesId, signedDto.getCompanyId());
		return new ResponseDto<>(1, "좋아요취소", null);
	}

	@GetMapping("/recommend")
	public String recommend(Model model) {
		Integer companyId = (Integer) session.getAttribute("companyId");
		List<PersonalLikeDto> personalLikeDto = personalLikeService.좋아요이력서(companyId);
		model.addAttribute("personalLikeList", personalLikeDto);
		return "/company/recommend";
	}

	@PostMapping("/companyLike/{companyId}/likes")
	public @ResponseBody ResponseDto<?> insertCompanyLike(@PathVariable Integer companyId) {

		SignedDto<?> signedDto = (SignedDto<?>) session.getAttribute("principal");

		companyLikeService.좋아요(signedDto, companyId);

		return new ResponseDto<>(1, "좋아요성공", null);

	}

	@DeleteMapping("/companyLike/{companyId}/likes")
	public @ResponseBody ResponseDto<?> deleteCompanyLike(@PathVariable Integer companyId) {

		SignedDto<?> signedDto = (SignedDto) session.getAttribute("principal");

		companyLikeService.좋아요취소(companyId, signedDto.getPersonalId());
		return new ResponseDto<>(1, "좋아요취소", null);
	}

	@GetMapping("/job_posting_View_Apply/{companyId}")
	public String company(@PathVariable Integer companyId, Model model) {
		SignedDto<?> signedDto = (SignedDto<?>) session.getAttribute("principal");
		CompanyLike companyLike = companyLikeService.좋아요확인(companyId, signedDto.getPersonalId());
		model.addAttribute("companyLike", companyLike);
		return "/personal/job_posting_View_Apply";
	}

}