package controller;

import model.User;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import service.UserService;

@SuppressWarnings("deprecation")
public class UserController extends SimpleFormController {
    private UserService userService;


    public UserController() {
        setCommandClass(User.class);
        setCommandName("attributeName_user5");
    }

    @Override
    protected ModelAndView onSubmit(Object command) throws Exception {
        User user = (User) command;
        userService.add(user);
        return new ModelAndView("userSuccess", "attributeName_user6", user);
    }


    public void setUserService(UserService userService) {
        this.userService = userService;
    }
}
