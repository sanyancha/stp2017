package by.bsuir.myappspringboot.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "course_timetable")
public class CourseTimetable implements Serializable {

    private int id;
    private Course course;
    private Date startDate;
    private Date finishDate;
    private boolean isOpen;
    private Set<User> users;

    public CourseTimetable() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne
    @JoinColumn(name = "name_course")
    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    @Column(name = "start_date")
    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    @Column(name = "finish_date")
    public Date getFinishDate() {
        return finishDate;
    }

    public void setFinishDate(Date finishDate) {
        this.finishDate = finishDate;
    }

    @Column(name = "is_open")
    public boolean isOpen() {
        return isOpen;
    }

    public void setOpen(boolean open) {
        isOpen = open;
    }

    @ManyToMany(mappedBy = "timetables", fetch = FetchType.EAGER)
    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "CourseTimetableService{" +
                "id=" + id +
                ", course=" + course.getName() +
                ", startDate=" + startDate +
                ", finishDate=" + finishDate +
                ", isOpen=" + isOpen +
                '}';
    }
}
