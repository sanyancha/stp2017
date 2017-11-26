package by.bsuir.myappspringboot.controller;

import by.bsuir.myappspringboot.controller.util.AttributeSetter;
import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public String login(@RequestParam String login, @RequestParam String password, Model model, HttpServletRequest request) {
        boolean notCorrect = userService.signIn(login, password);

        if (notCorrect) {
            AttributeSetter.setAttributes(model, notCorrect, 0);
            return "startPage";
        } else {
            User logUser = userService.getUser(login);
            AttributeSetter.setUserAttributes(model, logUser.getBalance(), logUser.getName(),0);
            request.getSession().setAttribute("user", logUser);

            return "redirect:/user-home";
        }

    }

    @GetMapping("/get-user-info")
    @ResponseBody
    public User getInfo(HttpServletRequest request) {

        return (User) request.getSession().getAttribute("user");
    }

    @PostMapping("/register")
    public String registration(@RequestParam(required = false) String name, @RequestParam(required = false) String mail, @RequestParam(required = false) String apassword, @RequestParam(required = false) String repPassword, @RequestParam(required = false) String phone, Model model,HttpServletRequest request) {
        User user = new User();
        user.setName(name);
        user.setLogin(mail);
        user.setPassword(apassword);
        user.setMobile(phone);

        int notCorrect = userService.signUp(user);

        if (notCorrect != 0) {
            AttributeSetter.setAttributesOnRegister(model, notCorrect, name, mail, apassword, repPassword, phone);
            return "startPage";
        } else {
            User regUser = userService.getUser(mail);
            AttributeSetter.setUserAttributes(model, regUser.getBalance(), regUser.getName(), 0);
            request.getSession().setAttribute("user", regUser);
            return "redirect:/user-home";
        }
    }

    @GetMapping("/user-home")
    public String userHome(HttpServletRequest request, Model model) {
        User user = (User) request.getSession().getAttribute("user");
        request.getSession().removeAttribute("user");

        User upUser = userService.getUser(user.getLogin());
        request.getSession().setAttribute("user", upUser);

        AttributeSetter.setUserAttributes(model, upUser.getBalance(), upUser.getName(), 0);

        return "startUser";
    }


    @GetMapping("/get-visited-courses")
    @ResponseBody
    public String getVisitedCourses(HttpServletRequest request) {


        return "String get visited courses";
    }
}
