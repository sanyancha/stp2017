package by.bsuir.myappspringboot;

import by.bsuir.myappspringboot.entity.Course;
import by.bsuir.myappspringboot.entity.CourseTimetable;
import by.bsuir.myappspringboot.entity.User;
import by.bsuir.myappspringboot.repository.CourseRepository;
import by.bsuir.myappspringboot.repository.CourseTimetableRepository;
import by.bsuir.myappspringboot.repository.UserRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MyappspringbootApplicationTests {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private CourseRepository courseRepository;

	@Autowired
	private CourseTimetableRepository courseTimeTableRepository;

	@Test
	public void contextLoads() {
		//System.out.println(userRepository.findOne(1));
		/*for (CourseTimetable ct : userRepository.findOne(1).getTimetables()) {
			System.out.println(ct);
		}

		for (Course c : courseRepository.findAll()) {
			System.out.println(c);
		}

		for (User u : courseTimeTableRepository.findOne(1).getUsers()) {
			System.out.println(u);
		}

		System.out.println(userRepository.findByLoginAndPassword("zh@mail.ru", "5077b55332a5dbffbc6e400ac6142447"));

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
		System.out.println("Now date");
		System.out.println(dateFormat.format(new Date()));*/

		System.out.println("courses");
		for (CourseTimetable u : courseTimeTableRepository.findAllByOpen(false)) {
			System.out.println(u.getCourse());
		}
		/*
		System.out.println("-----------");
		System.out.println("Start");
		Date startDate = new Date();

		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, 1);

		Date finishDate = cal.getTime();

		for (CourseTimetable u : courseTimeTableRepository.findAllByStartDateBetween(startDate,finishDate)) {
			System.out.println(u.getCourse());
		}
*/

	}

}
