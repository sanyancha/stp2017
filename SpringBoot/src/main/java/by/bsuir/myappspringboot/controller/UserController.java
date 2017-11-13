package by.bsuir.myappspringboot.controller;

import by.bsuir.myappspringboot.controller.util.AttributeSetter;
import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");

    @PostMapping("/login")
    public String login(@RequestParam String login, @RequestParam String password, Model model){
        boolean correct = userService.signIn(login,password);

        if(correct) {
            AttributeSetter.setAttributes(model, correct, 0);
            return "startPage";
        }else{
            User logUser = userService.getUser(login);
            AttributeSetter.setUserAttributes(model,logUser.getBalance(),logUser.getName());
            return "startUser";
        }

    }

    @PostMapping("/register")
    public String registration(@RequestParam(required = false) String name, @RequestParam(required = false) String mail, @RequestParam(required = false) String apassword, @RequestParam(required = false) String repPassword, @RequestParam(required = false) String phone, Model model){
        User user = new User();
        user.setName(name);
        user.setLogin(mail);
        user.setPassword(apassword);
        user.setMobile(phone);

        int correct = userService.signUp(user);

        if(correct != 0) {
            AttributeSetter.setAttributesOnRegister(model, correct, name, mail, apassword, repPassword, phone);
            return "startPage";
        }else{
            User regUser = userService.getUser(mail);
            AttributeSetter.setUserAttributes(model,regUser.getBalance(),regUser.getName());
            return "startUser";
        }
    }
}
