package by.bsuir.myappspringboot.repository;

import by.bsuir.myappspringboot.entity.Course;
import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface CourseTimetableRepository extends JpaRepository<CourseTimetable, Integer> {
    List<CourseTimetable>  findAllByOpen(boolean open);

    List<CourseTimetable> findAllByStartDateBetween(Date startDate,Date finishDate);

    List<CourseTimetable> findAllByUsers(List<User> users);

    List<CourseTimetable> findAllByOpenAndCourseNotIn(boolean open,List<Course> courses);

    CourseTimetable findById(int id);

    CourseTimetable save(CourseTimetable savecourse);

    List<CourseTimetable> findAllByOpenAndUsers(boolean open,User user);

}
