package org.proffart.carpool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Karine on 4/12/2015.
 */
@Controller
public class TestController {

    @RequestMapping(value = "test1")
    public String testAction() {

        return "new-test";
    }

    @RequestMapping(value = "test2", method = RequestMethod.POST)
    public String test1Action() {
        int o = 10;
        return "new-test";
    }


}
