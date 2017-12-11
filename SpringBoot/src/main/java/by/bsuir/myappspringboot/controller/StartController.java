package by.bsuir.myappspringboot.controller;

import by.bsuir.myappspringboot.controller.util.AttributeSetter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class StartController {

    @RequestMapping("/")
    public String privet(Model model, HttpServletRequest request){
        AttributeSetter.setAttributes(model,false,0);
        /*request.getSession().removeAttribute("user");
        request.getSession(false).invalidate();*/
        return "startPage";
    }

}
