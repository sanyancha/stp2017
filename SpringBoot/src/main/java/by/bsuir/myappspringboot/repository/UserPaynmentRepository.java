package by.bsuir.myappspringboot.repository;


import by.bsuir.myappspringboot.entity.UserPaynment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserPaynmentRepository extends JpaRepository<UserPaynment, Integer> {
}
