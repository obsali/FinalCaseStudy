package teksystems.casestudy.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import teksystems.casestudy.database.dao.ProductDAO;
import teksystems.casestudy.database.entity.Product;
import teksystems.casestudy.formbean.ProductFormBean;

import javax.validation.Valid;
import javax.websocket.server.PathParam;

@Slf4j
@Controller
public class ProductController {

    @Autowired
    private ProductDAO productDao;

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public ModelAndView product() throws Exception {
        ModelAndView response= new ModelAndView();
        response.setViewName("product/productList");
        return response;
    }


    @RequestMapping(value = "/product/productSubmit", method = RequestMethod.GET)
    public ModelAndView submit(@Valid ProductFormBean form, BindingResult bindingResult) throws Exception {
        ModelAndView response= new ModelAndView();
        response.setViewName("user/product");

        log.debug(form.toString());

        if (bindingResult.hasErrors())  {
            // this is the error case
            for ( FieldError error : bindingResult.getFieldErrors()) {
                log.debug(error.toString());
            }

            // add the errors to the model to be displayed on the page
            response.addObject("bindingResult", bindingResult);

            // add the form bean back to the model so I can fill the form with the user input
            response.addObject("form", form);
        } else {
            // this is the success case
            // we are going to save the product to the database

            Product product = new Product();

            product.setName(form.getProductName());
            product.setDescription(form.getDescription());
            product.setPrice((int) form.getPrice().doubleValue());
            product.setImgUrl(form.getImageUrl());

            productDao.save(product);

        }


        return response;
    }


    @RequestMapping(value = "/product/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathParam("id") Integer id) throws Exception {
        ModelAndView response= new ModelAndView();
        response.setViewName("user/product");

        Product p = productDao.findById(id);
        if ( p == null ) {
            // this is an error
        } else {
            productDao.delete(p);
        }

        return response;
    }

}