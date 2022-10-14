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


	@PostMapping("/personalLike/{resumesId}/likes")
	public @ResponseBody ResponseDto<?> insertLike(@PathVariable Integer resumesId) {
		//Company company = (Company) session.getAttribute("principal");

		SignedDto<?> signedDto = (SignedDto) session.getAttribute("principal");

		personalLikeService.좋아요(resumesId, signedDto.getCompanyId());
		return new ResponseDto<>(1, "좋아요성공", null);

	}

	@PostMapping("/recommend")
	public @ResponseBody ResponseDto<?> insertRecommend(@RequestBody InsertRecommendDto insertRecommendDto){
		personalLikeService.좋아요이력서추가(insertRecommendDto);
		return new ResponseDto<>(1, "이력서추가", null);
	}



	@DeleteMapping("/personalLike/{resumesId}/likes")
	public @ResponseBody ResponseDto<?> deleteLike(@PathVariable Integer resumesId){

		SignedDto<?> signedDto = (SignedDto) session.getAttribute("principal");
		personalLikeService.좋아요취소(resumesId, signedDto.getCompanyId());
		return new ResponseDto<>(1, "좋아요취소", null);
	}


	@GetMapping("/resume")
	public String resume() {
		return "/company/resume";
	}


	@GetMapping("/recommend")
	public String recommend(Model model) {
		List<PersonalLikeDto> personalLikeDto = personalLikeService.좋아요이력서();
		model.addAttribute("personalLikeList", personalLikeDto);
		return "/company/recommend";
	}



}
