package by.bsuir.myappspringboot.controller;

import by.bsuir.myappspringboot.controller.util.AttributeSetter;
import by.bsuir.myappspringboot.entity.Course;
import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.service.CourseTimetableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CourseTimetableController {

    @Autowired
    private CourseTimetableService courseTimetableService;

    @GetMapping("/get-selection-open-course")
    @ResponseBody
    public List<CourseTimetable> getSelectionOpenCourses() {

        return courseTimetableService.getSelectonOpenCourses();
    }

    @GetMapping("/get-planned-course")
    @ResponseBody
    public List<CourseTimetable> getPlannedCourses() {

        return courseTimetableService.getPlannedCourses();
    }

    @GetMapping("/join-courses")
    public String joinCourses(HttpServletRequest request, Model model) {
        User user = (User) request.getSession().getAttribute("user");

        List<CourseTimetable> availCourses = courseTimetableService.userAvailibleCourses(user);

        if (availCourses.size() == 0) {
            request.getSession().removeAttribute("user");
            User upUser = courseTimetableService.findByLoginUser(user.getLogin());
            request.getSession().setAttribute("user", upUser);

            AttributeSetter.setUserAttributes(model, upUser.getBalance(), upUser.getName(), 20); //20 курсов доступных нет
            return "startUser";
        } else {
            AttributeSetter.setUserAttributes(model, user.getBalance(), user.getName(), 0);
            AttributeSetter.setAvailibleCources(model, availCourses, 0);
            return "joinCourses";
        }
    }

    @GetMapping("/leave-courses")
    public String leaveCourses(HttpServletRequest request, Model model) {
        User user = (User) request.getSession().getAttribute("user");

        List<CourseTimetable> userLeaveCourses = courseTimetableService.getUserCoursesToLeave(user);

        if (userLeaveCourses.size() == 0) {
            request.getSession().removeAttribute("user");
            User upUser = courseTimetableService.findByLoginUser(user.getLogin());
            request.getSession().setAttribute("user", upUser);

            AttributeSetter.setUserAttributes(model, upUser.getBalance(), upUser.getName(), 30); //30 курсов доступных для удаления нет

            return "startUser";
        } else {

            AttributeSetter.setUserAttributes(model, user.getBalance(), user.getName(), 0);
            AttributeSetter.setAvailibleCources(model, userLeaveCourses, 0);

            return "leaveCourses";
        }

    }


    @PostMapping("/add-course")
    public String addCourse(Model model, HttpServletRequest request, @RequestParam ArrayList<Integer> listCourses) {
        User user = (User) request.getSession().getAttribute("user");

        int checkData = courseTimetableService.joinUserCourses(user, listCourses);

        if (checkData != 0) {

            List<CourseTimetable> availCourses = courseTimetableService.userAvailibleCourses(user);
            AttributeSetter.setUserAttributes(model, user.getBalance(), user.getName(), 0);
            AttributeSetter.setAvailibleCources(model, availCourses, checkData);
            return "joinCourses";

        } else {
            request.getSession().removeAttribute("user");
            User upUser = courseTimetableService.findByLoginUser(user.getLogin());
            request.getSession().setAttribute("user", upUser);
            AttributeSetter.setUserAttributes(model, upUser.getBalance(), upUser.getName(), 10);
            return "startUser";
        }

    }

    @PostMapping("/delete-course")
    public String deleteCourse(Model model, HttpServletRequest request, @RequestParam ArrayList<Integer> idCourses) {
        User user = (User) request.getSession().getAttribute("user");


        int checkData = courseTimetableService.leaveUserCourses(user, idCourses);
        if (checkData != 0) {

            List<CourseTimetable> availCourses = courseTimetableService.getUserCoursesToLeave(user);
            AttributeSetter.setUserAttributes(model, user.getBalance(), user.getName(), 0);
            AttributeSetter.setAvailibleCources(model, availCourses, checkData);

            return "leaveCourses";
        } else {

            request.getSession().removeAttribute("user");
            User upUser = courseTimetableService.findByLoginUser(user.getLogin());
            request.getSession().setAttribute("user", upUser);
            AttributeSetter.setUserAttributes(model, upUser.getBalance(), upUser.getName(), 10);
        }

        return "startUser";
    }

    @GetMapping("/get-visited-courses")
    @ResponseBody
    public List<CourseTimetable> getVisitedCourses(HttpServletRequest request) {

        User user = (User) request.getSession().getAttribute("user");

        return courseTimetableService.getMyCourses(user);
    }

}

