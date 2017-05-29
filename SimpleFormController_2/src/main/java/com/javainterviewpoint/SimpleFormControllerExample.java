package com.javainterviewpoint;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

@SuppressWarnings("deprecation")
public class SimpleFormControllerExample extends SimpleFormController
{
    public SimpleFormControllerExample()
    {
        setCommandClass(Student.class);
        setCommandName("st3");
    }
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception {
        Student st = (Student)command;
        return new ModelAndView("studentSuccess","st4",st);
    }
}