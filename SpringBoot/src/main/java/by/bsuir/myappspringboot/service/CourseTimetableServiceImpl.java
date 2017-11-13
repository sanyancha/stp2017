package by.bsuir.myappspringboot.service;

import by.bsuir.myappspringboot.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CourseTimetableServiceImpl implements CourseTimetableService {

    @Autowired
    private CourseRepository courseRepository;
}
