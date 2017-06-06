package controller;

import model.RegistrationForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistrationController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "/index";
    }

    @RequestMapping(value = "developer", method = RequestMethod.GET)
    public String developer(ModelMap model) {
        model.addAttribute("command", new RegistrationForm());
//        return "developer";
        return "registrationform";
    }

    @RequestMapping(value = "/addDeveloper", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute("mvc-dispatcher") RegistrationForm form,
                             ModelMap model) {
        model.addAttribute("name", form.getName());

        return "result";
    }
}
