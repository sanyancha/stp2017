package by.bsuir.myappspringboot.controller;

import by.bsuir.myappspringboot.entity.Course;
import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.entity.UserPaynment;
import by.bsuir.myappspringboot.repository.UserPaynmentRepository;
import by.bsuir.myappspringboot.service.UserPaynmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserPaynmentController {

    @Autowired
    private UserPaynmentService userPaynmentService;

}
