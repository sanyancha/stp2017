package by.bsuir.myappspringboot.service;

import by.bsuir.myappspringboot.entity.Course;
import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.repository.CourseTimetableRepository;
import by.bsuir.myappspringboot.repository.UserRepository;
import by.bsuir.myappspringboot.service.util.dateFormatCourseTimetable;
import org.codehaus.groovy.runtime.powerassert.SourceText;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class CourseTimetableServiceImpl implements CourseTimetableService {

    @Autowired
    private CourseTimetableRepository courseTimetableRepository;

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<CourseTimetable> getSelectonOpenCourses() {
        List<CourseTimetable> courses = courseTimetableRepository.findAllByOpen(true);

        List<CourseTimetable> coursesChange = dateFormatCourseTimetable.changeDateCourseTimetable(courses);

        return coursesChange;
    }

    @Override
    public List<CourseTimetable> getPlannedCourses() {

        Date startDate = new Date();

        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.MONTH, 1);
        Date finishDate = cal.getTime();

        List<CourseTimetable> courses = courseTimetableRepository.findAllByStartDateBetween(startDate, finishDate);
        List<CourseTimetable> coursesChange = dateFormatCourseTimetable.changeDateCourseTimetable(courses);


        return coursesChange;
    }

    public List<CourseTimetable> userAvailibleCourses(User user) {
        List<CourseTimetable> needCourses;

        List<User> userList = new ArrayList<>();
        userList.add(user);

        List<CourseTimetable> userCoursesT = courseTimetableRepository.findAllByUsers(userList);
        List<Course> userCourse = new ArrayList<>();

        for (CourseTimetable ct : userCoursesT) {
            userCourse.add(ct.getCourse());
        }

        if (userCourse.size() == 0) {
            needCourses = courseTimetableRepository.findAllByOpen(true);


        } else {
            needCourses = courseTimetableRepository.findAllByOpenAndCourseNotIn(true, userCourse);

        }

        return needCourses;

    }

    @Override
    public User findByLoginUser(String loginUser) {

        return userRepository.findByLogin(loginUser);
    }

    @Transactional
    @Override
    public int joinUserCourses(User user, ArrayList<Integer> listCourses) {
        List<CourseTimetable> ct = new ArrayList<>();

        int outCheck = 0;
        Double prise = 0.0;

        //Дополнительная проверка на сущесвование id в списке доступных пользователю
        List<CourseTimetable> userAvail = userAvailibleCourses(user);

        int numberContr = 0; //контрольное число проверки

        for (CourseTimetable avct : userAvail) {
            for (int idClient : listCourses) {
                if (idClient == avct.getId()) {
                    numberContr += 1;
                }
            }
        }

        if (numberContr != listCourses.size()) {

            outCheck = 3;  //код ошибки на измененные данные

        } else {

            for (int id : listCourses) {
                CourseTimetable course = courseTimetableRepository.findById(id);
                ct.add(course);
                prise += course.getCourse().getPrice();
            }

            boolean chkEq = false;

            if (ct.size() > 1) {   //проверка на аналоги курсов

                int i = 0;

                for (CourseTimetable course : ct) {
                    String name1 = course.getCourse().getName();

                    for (int j = i + 1; j < ct.size(); j++) {
                        String name2 = ct.get(j).getCourse().getName();

                        if (name1 == name2) {
                            chkEq = true;
                            break;
                        }
                    }

                    if (chkEq) {
                        break;
                    }
                    i++;
                }
            }


            if (!chkEq) {  // если нет аналогов

                if (prise > user.getBalance()) {

                    outCheck = 1;  //недостаточно на балансе

                } else {

                    Set<CourseTimetable> userSet = user.getTimetables();

                    for (CourseTimetable course : ct) {
                        userSet.add(course);
                    }

                    user.setTimetables(userSet);
                    double balanceAfter = user.getBalance() - prise;
                    user.setBalance(balanceAfter);
                    userRepository.save(user);

                }
            } else {  //если нашлось совпадение
                outCheck = 2;
            }
        }

        return outCheck;
    }

    @Override
    public List<CourseTimetable> getUserCoursesToLeave(User user) {

        return courseTimetableRepository.findAllByOpenAndUsers(true, user);
    }

    @Transactional
    @Override
    public int leaveUserCourses(User user, ArrayList<Integer> idCourses) {
        List<CourseTimetable> ct = new ArrayList<>();
        int outCheck = 0;
        Double prise = 0.0;

        //Дополнительная проверка на сущесвование id в списке доступных пользователю
        List<CourseTimetable> userAvail = getUserCoursesToLeave(user);

        int numberContr = 0;  //контрольное число проверки

        for (CourseTimetable avct : userAvail) {
            for (int idClient : idCourses) {
                if (idClient == avct.getId()) {
                    numberContr += 1;
                    ct.add(avct);
                }
            }
        }

        if (numberContr != idCourses.size()) {
            outCheck = 3; //код ошибки на измененные данные на клиенте
        } else {
            outCheck = 0;

            Set<CourseTimetable> userSet = user.getTimetables();


            Iterator<CourseTimetable> iterator = userSet.iterator();
            while(iterator.hasNext()) {
                CourseTimetable localct = iterator.next();

                for (int i = 0; i < ct.size(); i++) {
                    if (localct.getId() == ct.get(i).getId()) {
                        iterator.remove();
                        prise += ct.get(i).getCourse().getPrice();
                    }
                }
            }



            user.setTimetables(userSet);
            double balanceAfter = user.getBalance() + prise;
            user.setBalance(balanceAfter);
            userRepository.save(user);

        }

        return outCheck;
    }

    @Override
    public List<CourseTimetable> getMyCourses(User user) {
        List<CourseTimetable> courses = courseTimetableRepository.findAllByUsers(user);
        List<CourseTimetable> coursesChange = dateFormatCourseTimetable.changeDateCourseTimetable(courses);
        return coursesChange;
    }
}
