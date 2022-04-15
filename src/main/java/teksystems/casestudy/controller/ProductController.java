package teksystems.casestudy.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import teksystems.casestudy.database.dao.OrderDAO;
import teksystems.casestudy.database.dao.OrderProductDAO;
import teksystems.casestudy.database.dao.ProductDAO;
import teksystems.casestudy.database.entity.Product;
import teksystems.casestudy.database.entity.User;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class ProductController {

    @Autowired
    ProductDAO productDAO;
    @Autowired
    OrderDAO orderDAO;
    @Autowired
    OrderProductDAO orderProductDAO;

    //    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/product/search", method = RequestMethod.GET)
    public ModelAndView searchProduct(@RequestParam(value = "name", required = false) String name) {
        ModelAndView response = new ModelAndView();
        response.setViewName("product/searchProduct");

        List<Product> product = new ArrayList<>();

        // very basic example of error checking
        if (!StringUtils.isEmpty(name)) {
            product = ProductDAO.findByName(name);
        }

        // this line puts the list of users that we just queried into the model
        // the model is a map ( key value store )
        // any object of any kind can go into the model using this key value
        // in this case it is a list of Users
        response.addObject("productsModelKey", product);
        response.addObject("name", name);

        return response;
    }


    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public ModelAndView index() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/product");
        return response;
    }
}