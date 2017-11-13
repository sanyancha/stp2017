package by.bsuir.myappspringboot.repository;

import by.bsuir.myappspringboot.entity.CourseTimetable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseTimetableRepository extends JpaRepository<CourseTimetable, Integer> {
}
