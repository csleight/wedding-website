package com.radeus.wedding.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class RegistryController {
    private final String VIEW_NAME = "registry";

    @RequestMapping(value="/registry", method=RequestMethod.GET)
    public ModelAndView getRsvp() {
        return new ModelAndView(VIEW_NAME);
    }
}
