package teksystems.casestudy.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import teksystems.casestudy.database.dao.UserDAO;
import teksystems.casestudy.database.entity.User;
import teksystems.casestudy.formbean.EditAccountFormBean;
import teksystems.casestudy.formbean.RegisterFormBean;
import teksystems.casestudy.service.UserService;


import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class UserController {

    @Autowired
    private UserDAO userDAO;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private UserService userService;

    @GetMapping("/user/edit/{userId}")
    public ModelAndView editUser(@PathVariable("userId") Integer userId) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/editAccount");

        User user = userDAO.findById(userId);

        RegisterFormBean form = new RegisterFormBean();

        form.setId(Math.toIntExact(user.getId()));
        form.setEmail(user.getEmail());
        form.setFirstName(user.getFirstName());
        form.setLastName(user.getLastName());
        form.setPassword(user.getPassword());
        form.setConfirmPassword(user.getPassword());
        response.addObject("user", user);
        response.addObject("form", form);

        return response;
    }

    @PreAuthorize("hasAuthority('ADMIN')")

    @RequestMapping(value="/user/search", method= RequestMethod.GET )
    public ModelAndView search(@RequestParam(value = "firstName", required = false) String firstName) {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/search");

        List<User> users = new ArrayList<>();

        if (!StringUtils.isEmpty(firstName)) {
            users = userDAO.findByFirstNameIgnoreCaseContaining(firstName);
        }

        response.addObject("usersModelKey", users);
        response.addObject("firstName", firstName);

        return response;
    }
    @RequestMapping(value="/user/accountEditForm", method = RequestMethod.GET )
    public ModelAndView accountEdit() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/editAccount");

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        User user = userDAO.findByEmail(username);

        EditAccountFormBean form = new EditAccountFormBean();
        form.setFirstName(user.getFirstName());
        form.setLastName(user.getLastName());
        response.addObject("form", form);

        return response;
    }

    @RequestMapping(value = "/user/accountEditSubmit", method = { RequestMethod.POST, RequestMethod.GET})
    public ModelAndView accountEditSubmit(@Valid EditAccountFormBean form, BindingResult bindingResult) throws Exception{
        ModelAndView response = new ModelAndView();

        log.info(form.toString());
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = authentication.getName();
        User authenticatedUser = userDAO.findByEmail(username);
        if (bindingResult.hasErrors()){
            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug( ((FieldError)error).getField() + " " +  error.getDefaultMessage());
            }
            response.addObject("form", form);
            response.addObject("bindingResult", bindingResult);
            response.setViewName("/user/editAccount");
            return response;
        }
        Integer authenticatedUserID = authenticatedUser.getId();
        User userToEdit = userDAO.findById(authenticatedUserID);
        String newPassword = form.getNewPassword();
        String confirmNewPassword = form.getConfirmPassword();

        String newFirstName = form.getFirstName();
        String newLastName = form.getLastName();
        if (newPassword!=null){
            if(userService.changePasswordValidator(newPassword, confirmNewPassword)){
                userToEdit.setPassword(passwordEncoder.encode(confirmNewPassword));
            }
        }
        if (newFirstName!=null && !newFirstName.equals(userToEdit.getFirstName())){
            userToEdit.setFirstName(newFirstName);
        }
        if (newLastName!=null && !newLastName.equals(userToEdit.getLastName())){
            userToEdit.setLastName(newLastName);
        }
        userDAO.save(userToEdit);
        response.setViewName("redirect:/index");
        return response;
    }
}