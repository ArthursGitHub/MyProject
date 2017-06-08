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
        model.addAttribute("email", form.getEmail());
        model.addAttribute("web", form.getWeb());
        model.addAttribute("city", form.getCity());
        model.addAttribute("age", form.getAge());
        model.addAttribute("sex", form.getSex());
        model.addAttribute("hobby", form.getHobby());
        model.addAttribute("message", form.getMessage());

        System.out.println("name" + form.getName());
        System.out.println("email" + form.getEmail());
        System.out.println("web" + form.getWeb());
        System.out.println("city" + form.getCity());
        System.out.println("age" + form.getAge());
        System.out.println("sex" + form.getSex());
        System.out.println("hobby" + form.getHobby());
        System.out.println("message" + form.getMessage());
        
        return "result";
    }
}
