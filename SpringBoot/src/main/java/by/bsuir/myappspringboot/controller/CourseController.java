package by.bsuir.myappspringboot.controller;

import by.bsuir.myappspringboot.entity.Course;
import by.bsuir.myappspringboot.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CourseController {

    @Autowired
    private CourseService courseService;

    @GetMapping("/get-all-course")
    @ResponseBody
    public String getAllCourses() {
        /*List<Course> allCourses =  courseService.getAllCourses();*/
        return "String get all courses";
    }

    @GetMapping("/get-selection-open-course")
    @ResponseBody
    public String getSelectionOpenCourses() {

        return "String get selection open courses";
    }

    @GetMapping("/get-planned-course")
    @ResponseBody
    public String getPlannedCourses() {

        return "String get planned courses";
    }
}
