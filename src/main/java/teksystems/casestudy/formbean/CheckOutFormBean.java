package teksystems.casestudy.formbean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@ToString
public class CheckOutFormBean {

    private Integer id;

    @NotBlank(message = "Card digit must be 16 digits long")
    private String creditCard;
    @NotBlank(message = "Address cannot be blank")
    private String ShippingAddress;


}
