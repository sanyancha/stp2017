package by.bsuir.myappspringboot.service;

import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;

import java.util.Set;

public interface UserService {
    int signUp(User user);
    boolean signIn(String login, String password);
    User getUser(String login);
    Set<CourseTimetable> getTimetables(String login);
}
