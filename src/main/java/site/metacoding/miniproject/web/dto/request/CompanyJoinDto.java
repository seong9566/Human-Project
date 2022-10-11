package site.metacoding.miniproject.web.dto.request;

import java.util.Map;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyJoinDto {
    private String loginId;
    private String loginPassword;
    private String companyName;
    private String companyEmail;
    private String companyAddress;
    private String companyPhoneNumber;
    private Boolean frontend;
    private Boolean backend;
    private Boolean devops;
    // 계정생성용
    private Integer companyId;
    private Integer categoryId;

}
