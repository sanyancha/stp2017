package by.bsuir.myappspringboot.service;

import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.repository.UserRepository;
import by.bsuir.myappspringboot.service.exception.ServiceException;
import by.bsuir.myappspringboot.service.util.Encoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements  UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public int signUp(User user){
        int exist = 0;
        String password = user.getPassword();

        try {
            password = Encoder.encode(password);
        } catch (ServiceException e) {
            e.printStackTrace();
        }

        user.setPassword(password);

        User chkLogin = userRepository.findByLogin(user.getLogin());
        User chkPhone = userRepository.findByMobile(user.getMobile());

        if(chkLogin != null){
            exist = exist + 1;
        }

        if(chkPhone != null){
            exist = exist + 2;
        }

        if(exist == 0){
            userRepository.save(user);
        }

        return exist;

    }

    @Override
    public boolean signIn(String login, String password){
        boolean notExist;
        try {
            password = Encoder.encode(password);
        } catch (ServiceException e) {
            e.printStackTrace();
        }

        User user = userRepository.findByLoginAndPassword(login,password);

        if(user == null){
            notExist = true;
        } else
            notExist = false;

        return notExist;

    }

    @Override
    public User getUser(String login){
        return userRepository.findByLogin(login);
    }
}
