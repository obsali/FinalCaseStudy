package teksystems.casestudy.formbean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotEmpty;

@Getter
@Setter
@ToString
public class ProductFormBean {

    @NotEmpty(message="product name must not be empty")
    private String productName;
    @NotEmpty(message="product id must not be empty")
    private Integer id;
    @NotEmpty(message="product category must not be empty")
    private String category;
    @NotEmpty(message="product description must not be empty")
    private String description;
    @NotEmpty(message="product imgUrl must not be empty")
    private String imageUrl;
    @NotEmpty(message="product price must not be empty")
    private Double price;

}