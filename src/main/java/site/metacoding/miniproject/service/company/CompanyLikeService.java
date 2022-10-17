package site.metacoding.miniproject.service.company;

import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;

import site.metacoding.miniproject.domain.like.companylike.CompanyLike;
import site.metacoding.miniproject.domain.like.companylike.CompanyLikesDao;


@RequiredArgsConstructor
@Service
public class CompanyLikeService {
	private final CompanyLikesDao companyLikesDao;

		public void 좋아요(Integer personalId, Integer companyId) {
			CompanyLike companyLike = new CompanyLike(personalId, companyId);
			companyLikesDao.insert(companyLike);
		}

		public void 좋아요취소(Integer personalId, Integer companyId) {
			CompanyLike companyLike = new CompanyLike(personalId, companyId);
			companyLikesDao.deleteById(companyLike);
		}

		
		public CompanyLike 좋아요확인(Integer personalId,Integer companyId) {
			   CompanyLike companyLike = new CompanyLike(personalId, companyId);
			   CompanyLike companyLike3 = companyLikesDao.findById(companyLike);
			      return companyLike3;
		}
}
