package by.bsuir.myappspringboot.service;

import by.bsuir.myappspringboot.entity.Course;
import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;

import java.util.ArrayList;
import java.util.List;

public interface CourseTimetableService {
    List<CourseTimetable> getSelectonOpenCourses();
    List<CourseTimetable> getPlannedCourses();
    List<CourseTimetable> userAvailibleCourses(User user);
    User findByLoginUser(String loginUser);
    int joinUserCourses(User user,ArrayList<Integer> listCourses);
    List<CourseTimetable> getUserCoursesToLeave(User user);
    int leaveUserCourses(User user,ArrayList<Integer> idCourses);
}
