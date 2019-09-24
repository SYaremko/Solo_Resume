package ua.com.Solo_Resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.com.Solo_Resume.service.NameServiceImp;


@Controller
public class PublicDataController {

    @Autowired
    private NameServiceImp nameService;

    @RequestMapping(value = "/{uid}", method = RequestMethod.GET)
    public String getProfile(@PathVariable("uid") String uid, Model model) {
        String fullName = nameService.convertName(uid);
        model.addAttribute("fullName", fullName);
        return "profile";
    }

    @RequestMapping(value = "/")
    public String getProfiless() {

        return "profile";
    }

    @RequestMapping(value = "/error")
    public String getProfilesssss() {

        return "error";
    }
}
