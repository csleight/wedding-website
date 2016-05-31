package com.radeus.wedding.controller;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.radeus.wedding.model.Rsvp;

@RestController
public class RsvpController {
    // TODO: consolidate the views and provide JSP tags to adjust the "rsvp" view based on the model content
    private final String QUERY_VIEW_NAME = "rsvp";
    private final String CREATE_VIEW_NAME = "newRsvp";
    private final String EMAIL_ATTRIBUTE = "email";

    @RequestMapping(value="/rsvp", method=RequestMethod.GET)
    public ModelAndView getRsvp() {
        return new ModelAndView(QUERY_VIEW_NAME);
    }

    /**
     * The ".+" is a regex to include all characters. This avoids having everything after the '.' (i.e. ".com") trimmed from the path variable.
     * 
     * @param email
     * @return
     */
    @RequestMapping(value="/rsvp/{email:.+}", method=RequestMethod.GET)
    public ModelAndView getRsvpFor(@PathVariable("email") final String email) {
//        final String redirectToView = "redirect:/" + VIEW_NAME;
//        System.out.println(redirectToView + "; email="+email);
        final Rsvp rsvp = new Rsvp();
        rsvp.setEmail(email);
        final ModelAndView modelAndView = new ModelAndView(CREATE_VIEW_NAME, "rsvp", rsvp);
        return modelAndView;
    }

    @RequestMapping(value="/rsvp", method=RequestMethod.POST)
    public ModelAndView postRsvp(@ModelAttribute("rsvp") final Rsvp rsvp, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            // TODO: Pass off to error view and return;
        }
        System.out.println("RSVP posted.");
        System.out.println("Email: " + rsvp.getEmail());
        System.out.println("First Name: " + rsvp.getFirstName());
        System.out.println("Last Name: " + rsvp.getLastName());
        System.out.println("Attending?: " + (rsvp.isAttending() ? "Yes" : "No"));
        System.out.println("Total In Party: " + rsvp.getTotalInParty());
        final ModelAndView modelAndView = new ModelAndView(CREATE_VIEW_NAME);
        modelAndView.addObject("rsvp", rsvp);
        return modelAndView;
    }
}
