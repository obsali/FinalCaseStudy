//package teksystems.casestudy.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//import teksystems.casestudy.database.dao.OrderDAO;
//import teksystems.casestudy.database.dao.OrderProductDAO;
//import teksystems.casestudy.database.dao.ProductDAO;
//import teksystems.casestudy.database.dao.UserDAO;
//import teksystems.casestudy.database.entity.Order;
//import teksystems.casestudy.database.entity.OrderProduct;
//import teksystems.casestudy.database.entity.Product;
//import teksystems.casestudy.database.entity.User;
//
//import java.util.Date;
//
//@Controller
//public class CartController {
//
//    @Autowired
//    private UserDAO userDAO;
//
//    @Autowired
//    private OrderDAO orderDAO;
//
//    @Autowired
//    private OrderProductDAO orderProductDAO;
//
//    // autowire all 3 dao - order, product, orderProduct
//
//    @RequestMapping(value = "/cart/addProduct", method = RequestMethod.GET)
//    public ModelAndView index(@RequestParam Integer productId, String message) throws Exception {
//        ModelAndView response = new ModelAndView();
//
//        // first look up the user from the spring security
//        // next query the product based on the product Id
//        User user = userDAO.findById
//
//        // if the user is not null the know it is an edit
//        if (user == null) {
//            // now, if the user from the database is null then it means we did not
//            // find this user.   Therefore, it is a create.
//            user = new User();
//        }
//
//
//
//
//        // pretend we did a productDao.findById here instead
//        Product product = ProductDAO.findById(id)
//
//        // if the product is null then its an error condition
//
//        if(Product == null){
//            Product product1 = new Product()
//        }
//
//        // pretend that we looked up the order in teh database using the userid and an order status
//        Order order = new Order();
//
//        // if order does not exist create it  and save it
//
//        // here actually want to make the new OrderProduct entity
//        OrderProduct orderProduct = new OrderProduct();
//        orderProduct.setProduct(product);
//        orderProduct.setOrder(order);
//
//        // save this using the dao
//
//        OrderProductDAO.save(orderProduct);
//
//        return response;
//    }
//
//    // pass in the conversationid and the message
//    // find the logged in user from the database
//    // create a message entity and set the converstaion and user
//
//    // pass in to the controller the userid and the conversation id .... userid != to the logged in user (most likely)
//    // query the conversation
//    // if not exists error
//    // query the user based on userid
//    // if not exists error
//    // creat a new userConversation object
//    // set the converstaion
//    // set the user
//    // save
//
//
//    @RequestMapping(value = "/user/product", method = RequestMethod.GET)
//    public ModelAndView create() throws Exception {
//        ModelAndView response = new ModelAndView();
//        response.setViewName("user/home");
//        return response;
//
//    }
//}
