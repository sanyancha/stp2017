package by.bsuir.myappspringboot.repository;

import by.bsuir.myappspringboot.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    User findByLogin(String login);
    User findByMobile(String mobile);
    User findByLoginAndPassword(String login,String password);


}
