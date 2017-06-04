package controller;

import model.Developer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeveloperController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "/index";
    }

/*
    @RequestMapping(value = "developer", method = RequestMethod.GET)
    public ModelAndView developer() {
        return new ModelAndView("developer", "command", new Developer());
    }
*/

    @RequestMapping(value = "developer", method = RequestMethod.GET)
    public String developer(ModelMap model) {
//      return new ModelAndView("developer", "command", new Developer());
        model.addAttribute("command", new Developer());
        return "developer";
        // Этот обработчик делает тоже самое, что и предыдущий.
        // Этот более общий. Тот может вернуть только один атрибут, в данном случае по имени "command"
        // и отрендирить страничку "developer".
        // Этот может и другие атрибуты.
    }

    @RequestMapping(value = "/addDeveloper", method = RequestMethod.POST)
    public String addStudent(@ModelAttribute("mvc-dispatcher") Developer developer,
                             ModelMap model) {
        model.addAttribute("id", developer.getId());
        model.addAttribute("name", developer.getName());
        model.addAttribute("specilaty", developer.getSpecialty());
        model.addAttribute("experience", developer.getExperience());

        return "result";
    }
}
