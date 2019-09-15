package ua.com.Solo_Resume.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SearchController {
    @RequestMapping("/")
    public String vv(){
        return "index";
    }
}