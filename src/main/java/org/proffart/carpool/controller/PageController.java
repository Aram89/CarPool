package org.proffart.carpool.controller;

import org.proffart.carpool.utils.RequestMappings;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Aram on 4/26/2015.
 */
@Controller
public class PageController {
    @RequestMapping(value = RequestMappings.mapPage, method = RequestMethod.GET)
    public String map() {
        return "map";
    }

    @RequestMapping(value = RequestMappings.registrationPage, method = RequestMethod.GET)
    public String registration() {
        return "registration";
    }
}
