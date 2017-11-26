package by.bsuir.myappspringboot.repository;

import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    User findByLogin(String login);
    User findByMobile(String mobile);
    User findByLoginAndPassword(String login,String password);
    User save(User user);

}
