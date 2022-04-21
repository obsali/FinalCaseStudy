package teksystems.casestudy.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import teksystems.casestudy.database.dao.OrderDAO;
import teksystems.casestudy.database.dao.OrderProductDAO;
import teksystems.casestudy.database.dao.ProductDAO;
import teksystems.casestudy.database.dao.UserDAO;
import teksystems.casestudy.database.entity.Order;
import teksystems.casestudy.database.entity.OrderProduct;
import teksystems.casestudy.database.entity.User;

import java.util.*;

@Slf4j
@Controller
public class OrderCartController {
    @Autowired
    private UserDAO userDao;
    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private OrderDAO orderDAO;
    @Autowired
    private OrderProductDAO orderProductDAO;


    @RequestMapping(value = "/cart/check-out/{productid}", method = RequestMethod.GET)
    public ModelAndView buyNow(@PathVariable("productid") Integer productId) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("product/orderCart");

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
        } else {
            username = principal.toString();
        }
        User user = userDao.findByEmail(username);


        Order order = new Order();
        OrderProduct orderDetail = new OrderProduct();

        order.setStatus("PENDING");
        order.setOrderDate(new Date());
        order.setUser(user);
        orderDAO.save(order);


        orderDetail.setOrder(order);
        orderDetail.setProduct(productDAO.findById(productId));
        orderDetail.setQuantity(1);
        orderProductDAO.save(orderDetail);

        Set<OrderProduct> orderProductList = new HashSet<>();
        orderProductList.add(orderDetail);
        order.setOrderProducts(orderProductList);
        orderDAO.save(order);


        List<Map<String, Object>> cartProducts = orderDAO.getCartProducts(user.getId(), "PENDING");
        response.addObject("cartProducts", cartProducts);
        System.out.println(cartProducts);
        return response;
    }

    @RequestMapping(value = "/cart/addTo-cart/{productid}", method = RequestMethod.GET)
    public ModelAndView addToCart(@PathVariable("productid") Integer productId) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("redirect:/product/all");

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
        } else {
            username = principal.toString();
        }
        User user = userDao.findByEmail(username);

        Order order = new Order();
        OrderProduct orderDetail = new OrderProduct();

        order.setStatus("PENDING");
        order.setOrderDate(new Date());
        order.setUser(user);
        orderDAO.save(order);


        orderDetail.setOrder(order);
        orderDetail.setProduct(productDAO.findById(productId));
        orderDetail.setQuantity(1);
        orderProductDAO.save(orderDetail);

        Set<OrderProduct> orderProductList = new HashSet<>();
        orderProductList.add(orderDetail);
        order.setOrderProducts(orderProductList);
        orderDAO.save(order);


        List<Map<String, Object>> cartProducts = orderDAO.getCartProducts(user.getId(), "PENDING");
        response.addObject("cartProducts", cartProducts);
        return response;
    }

    @RequestMapping(value = "/cart/check-out/", method = RequestMethod.GET)
    public ModelAndView showCart() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("product/orderCart");

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        String username;
        if (principal instanceof UserDetails) {
            username = ((UserDetails) principal).getUsername();
        } else {
            username = principal.toString();
        }
        User user = userDao.findByEmail(username);


        List<Map<String, Object>> cartProducts = orderDAO.getCartProducts(user.getId(), "PENDING");
        response.addObject("cartProducts", cartProducts);
        System.out.println(cartProducts);
        return response;


    }
}


