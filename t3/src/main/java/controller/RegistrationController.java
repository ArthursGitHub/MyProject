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

    @RequestMapping(value = "registrationForm", method = RequestMethod.GET)
    public String registrationForm(ModelMap model) {
        model.addAttribute("command", new RegistrationForm());
        return "registrationform";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute("mvc-dispatcher") RegistrationForm forma,
                             ModelMap model) {
/*
        model.addAttribute("name", form.getName());
        model.addAttribute("email", form.getEmail());
        model.addAttribute("web", form.getWeb());
        model.addAttribute("city", form.getCity());
        model.addAttribute("age", form.getAge());
        model.addAttribute("sex", form.getSex());
        model.addAttribute("hobby", form.getHobby());
        model.addAttribute("message", form.getMessage());
*/

        model.addAttribute("forma", forma);

        System.out.println("name" + forma.getName());
        System.out.println("email" + forma.getEmail());
        System.out.println("web" + forma.getWeb());
        System.out.println("city" + forma.getCity());
        System.out.println("age" + forma.getAge());
        System.out.println("sex" + forma.getSex());
        System.out.println("hobby" + forma.getHobby());
        System.out.println("message" + forma.getMessage());
        
        return "result";
    }
}
