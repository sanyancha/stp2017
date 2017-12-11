package by.bsuir.myappspringboot.controller;

import by.bsuir.myappspringboot.controller.util.AttributeSetter;
import by.bsuir.myappspringboot.entity.Course;
import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PreDestroy;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;

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

        User myUser = (User) request.getSession().getAttribute("user");

        return myUser;
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

    @PostMapping("/take-in-balance")
    @ResponseBody
    public int addBalance(@RequestParam("card") String card, @RequestParam("balance") String balance, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        int check = userService.addBalance(user,card,balance);

        request.getSession().removeAttribute("user");

        User upUser = userService.getUser(user.getLogin());
        request.getSession().setAttribute("user", upUser);

        return check;
    }

    @PostMapping("/take-out-balance")
    @ResponseBody
    public int leaveBalance(@RequestParam("card") String card, @RequestParam("balance") String balance,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        int check = userService.leaveBalance(user,card,balance);

        request.getSession().removeAttribute("user");

        User upUser = userService.getUser(user.getLogin());
        request.getSession().setAttribute("user", upUser);
        return check;
    }

    @PostMapping("/setting-name")
    @ResponseBody
    public int changeName(@RequestParam("name") String name,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        userService.changeName(user,name);

        request.getSession().removeAttribute("user");

        User upUser = userService.getUser(user.getLogin());
        request.getSession().setAttribute("user", upUser);

        return 0;
    }

    @PostMapping("/setting-mobile")
    @ResponseBody
    public int changeMobile(@RequestParam("mobile") String mobile,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        userService.changeMobile(user,mobile);

        request.getSession().removeAttribute("user");

        User upUser = userService.getUser(user.getLogin());
        request.getSession().setAttribute("user", upUser);

        return 0;
    }

    @PostMapping("/setting-login")
    @ResponseBody
    public int changeLogin(@RequestParam("login") String login,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        int check = userService.changeLogin(user,login);

        request.getSession().removeAttribute("user");

        User upUser = userService.getUser(user.getLogin());
        request.getSession().setAttribute("user", upUser);

        return check;
    }

    @PostMapping("/setting-password")
    @ResponseBody
    public int changePassword(@RequestParam("oldPas") String oldPas,@RequestParam("newPas") String newPas,HttpServletRequest request) {
        int check;
        User user = (User) request.getSession().getAttribute("user");
        check = userService.changePassword(user,oldPas,newPas);

        request.getSession().removeAttribute("user");

        User upUser = userService.getUser(user.getLogin());
        request.getSession().setAttribute("user", upUser);

        return check;
    }

    @GetMapping("/logout")
    public String logout(Model model, HttpServletRequest request){
        AttributeSetter.setAttributes(model,false,0);
        System.out.println("logout");
        request.getSession(false).invalidate();
        return "startPage";
    }



}
