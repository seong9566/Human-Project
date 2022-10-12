package site.metacoding.miniproject.web.dto.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyInfoDto {
   private String loginId;
   private Integer companyId;
   private String companyName;
   private String companyPhoneNumber;
   private String companyEmail;
   private String companyPicture;
   private String companyAddress;
   private Boolean categoryFrontend;
   private Boolean categoryBackend;
   private Boolean categoryDevops;
   
}
