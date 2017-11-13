package by.bsuir.myappspringboot.service;

import by.bsuir.myappspringboot.entity.Course;
import by.bsuir.myappspringboot.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseRepository courseRepository;

    @Override
    public List getAllCourses() {
        List<Course> listCourses = courseRepository.findAll();
        return listCourses;
    }
}
