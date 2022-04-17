package teksystems.casestudy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import teksystems.casestudy.database.dao.OrderDAO;
import teksystems.casestudy.database.dao.ProductDAO;
import teksystems.casestudy.database.dao.UserDAO;
import teksystems.casestudy.database.entity.OrderProduct;
import teksystems.casestudy.database.entity.User;

@Controller
public class CartController {

    // autowire all 3 dao - order, product, orderProduct
    @Autowired
    private UserDAO userDao;
    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private OrderDAO orderDAO;

    // order has 2 status  .... pending or completed

    @RequestMapping(value = "/cart/addProduct", method = RequestMethod.GET)
    public ModelAndView addProductToCart(@RequestParam Integer productId) throws Exception {
        ModelAndView response = new ModelAndView();


        // first look up the user from the spring security
        // next query the product based on the product Id
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        User user = userDao.findByEmail(username);

        // need to query the produt from the database using the productid
        // if you are able to find the product in the database okay
        // if not then its an error and we can exit here and show some error message
        // if the product is null then its an error condition


        // look up the order in the database by the user id and the status
        // for the create we are looking for an order with the status pending
        // select * from orders wehre user_id = 1 and status = 'pending'
        // either returns a record or not
        // if no record returns .. then we need to create a new order
        // set your user object onto the order and set pending status on the order
        // order.setUser(user);
        // order.setStatus("PENDING");
        // save order

        // query the orderproduct using the order_id and the product_id
        // if the order product exists then increment the quantity
        // otherwise create a new one with quantity 1

        // here actually want to make the new OrderProduct entity
        OrderProduct orderProduct = new OrderProduct();
        //orderProduct.setProduct(product);
        //orderProduct.setOrder(order);

        // save this using the dao


        return response;
    }


    // pass in the conversationid and the message
    // find the logged in user from the database
    // create a message entity and set the converstaion and user

    // pass in to the controller the userid and the conversation id .... userid != to the logged in user (most likely)
    // query the conversation
    // if not exists error
    // query the user based on userid
    // if not exists error
    // creat a new userConversation object
    // set the converstaion
    // set the user
    // save

    @RequestMapping(value = "/showCart", method = RequestMethod.GET)
    public ModelAndView showCart() throws Exception {
        ModelAndView response = new ModelAndView();

        // query to get yoru products from the database
        // look in my code in the order product dao to find a list of map ...

        //select p.*, op.quantity from products p, order_products op, orders o
        //where p.id = op.product_id and o.id = op.order_id
        //and o.id = 1;

        //response.addObject("carItems", queryResult);

        return response;
    }
}