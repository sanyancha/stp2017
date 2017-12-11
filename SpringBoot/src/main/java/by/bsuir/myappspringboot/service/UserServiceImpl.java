package by.bsuir.myappspringboot.service;

import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.entity.UserPaynment;
import by.bsuir.myappspringboot.repository.UserRepository;
import by.bsuir.myappspringboot.service.exception.ServiceException;
import by.bsuir.myappspringboot.service.util.Encoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PreDestroy;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public int signUp(User user) {
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

        if (chkLogin != null) {
            exist = exist + 1;
        }

        if (chkPhone != null) {
            exist = exist + 2;
        }

        if (exist == 0) {
            userRepository.save(user);
        }

        return exist;

    }

    @Override
    public boolean signIn(String login, String password) {
        boolean notExist;
        try {
            password = Encoder.encode(password);
        } catch (ServiceException e) {
            e.printStackTrace();
        }

        User user = userRepository.findByLoginAndPassword(login, password);

        if (user == null) {
            notExist = true;
        } else
            notExist = false;

        return notExist;

    }

    @Override
    public User getUser(String login) {
        return userRepository.findByLogin(login);
    }

    public Set<CourseTimetable> getTimetables(String login) {
        return userRepository.findByLogin(login).getTimetables();
    }

    public int addBalance(User user, String card, String balance) {
        int outErr = 0;
        String encCard;

        if (card.length() != 19) {
            outErr = 1; // ошибка несоответствия длине
        } else {

            String cardNew = card.replaceAll(" ", "");
            try {

                Long.parseLong(cardNew);

            } catch (NumberFormatException nfe) {

                outErr = 2; // ошибка введенного формата
            }

            if (outErr == 0) {
                try {

                    Double.parseDouble(balance);

                } catch (NumberFormatException nfe) {

                    outErr = 3;  // ошибка несоответствия формату
                }

                if (outErr == 0) {
                    try {

                        Double formattedBalance = Math.rint(100.0 * Double.parseDouble(balance)) / 100.0;

                        encCard = Encoder.encode(card);

                        UserPaynment userPaynment = new UserPaynment();
                        userPaynment.setCardNo(encCard);
                        userPaynment.setOperation("U");
                        userPaynment.setValue(formattedBalance);
                        Date date = new Date();
                        userPaynment.setOperDate(date);
                        userPaynment.setUser(user);

                        Set<UserPaynment> userPaynmentList = user.getUserPaynments();

                        userPaynmentList.add(userPaynment);

                        user.setUserPaynments(userPaynmentList);
                        double balanceAfter = user.getBalance() + formattedBalance;
                        user.setBalance(balanceAfter);
                        userRepository.save(user);

                    } catch (ServiceException e) {
                        e.printStackTrace();
                    }

                }
            }

        }

        return outErr;
    }

    @Override
    public int leaveBalance(User user, String card, String balance) {
        int outErr = 0;
        String encCard;

        if (card.length() != 19) {
            outErr = 1; // ошибка несоответствия длине
        } else {

            String cardNew = card.replaceAll(" ", "");
            try {

                Long.parseLong(cardNew);

            } catch (NumberFormatException nfe) {

                outErr = 2; // ошибка введенного формата
            }

            if (outErr == 0) {
                try {

                    Double.parseDouble(balance);

                } catch (NumberFormatException nfe) {

                    outErr = 3;  // ошибка несоответствия формату
                }

                if (outErr == 0) {
                    try {

                        Double formattedBalance = Math.rint(100.0 * Double.parseDouble(balance)) / 100.0;

                        encCard = Encoder.encode(card);

                        UserPaynment userPaynment = new UserPaynment();
                        userPaynment.setCardNo(encCard);
                        userPaynment.setOperation("D");
                        userPaynment.setValue(formattedBalance);
                        Date date = new Date();
                        userPaynment.setOperDate(date);
                        userPaynment.setUser(user);

                        Set<UserPaynment> userPaynmentList = user.getUserPaynments();

                        userPaynmentList.add(userPaynment);

                        user.setUserPaynments(userPaynmentList);
                        double balanceAfter = user.getBalance() - formattedBalance;

                        if (balanceAfter < 0) {
                            outErr = 4;  // ошибка будущий баланс < 0
                        } else {

                            user.setBalance(balanceAfter);
                            userRepository.save(user);
                        }

                    } catch (ServiceException e) {
                        e.printStackTrace();
                    }

                }
            }

        }

        return outErr;
    }

    @Override
    public void changeName(User user, String name) {
        user.setName(name);
        userRepository.save(user);

    }

    @Override
    public void changeMobile(User user, String mobile) {
        user.setMobile(mobile);
        userRepository.save(user);

    }

    @Override
    public int changeLogin(User user, String login) {
        int check = 0;

        User findUser = userRepository.findByLogin(login);
        if (findUser == null) {
            user.setLogin(login);
            userRepository.save(user);
        } else {
            check = 1;
        }

        return check;

    }

    @Override
    public int changePassword(User user, String oldPasword, String newPassword) {
        String oldpathEnc;
        String newpathEnc;
        int check = 0;

        try {

            oldpathEnc = Encoder.encode(oldPasword);

            if (!oldpathEnc.equals(user.getPassword())) {

                check = 1;

            } else{
                newpathEnc = Encoder.encode(newPassword);
                user.setPassword(newpathEnc);
                userRepository.save(user);
            }


        } catch (ServiceException e) {
            e.printStackTrace();
        }

        return check;
    }
}
