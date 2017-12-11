package by.bsuir.myappspringboot.service;

import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;

import java.util.Set;

public interface UserService {
    int signUp(User user);
    boolean signIn(String login, String password);
    User getUser(String login);
    Set<CourseTimetable> getTimetables(String login);
    int addBalance(User user, String card, String balance);
    int leaveBalance(User user, String card, String balance);
    void changeName(User user,String name);
    void changeMobile(User user,String mobile);
    int changeLogin(User user,String login);
    int changePassword(User user,String oldPasword,String newPassword);
}
