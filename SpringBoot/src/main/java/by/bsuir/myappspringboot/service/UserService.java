package by.bsuir.myappspringboot.service;

import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.service.exception.ServiceException;

public interface UserService {
    int signUp(User user);
    boolean signIn(String login, String password);
    User getUser(String login);
}
