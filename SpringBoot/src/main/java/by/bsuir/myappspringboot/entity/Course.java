package by.bsuir.myappspringboot.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "courses")
public class Course implements Serializable {

    private String name;
    private double price;
    private int listenersQuantity;
    private int hours;
    private int dayWeek;

    @JsonIgnore
    private Set<CourseTimetable> timetables;

    public Course() {
    }

    @Id
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Column(name = "listeners_quantity")
    public int getListenersQuantity() {
        return listenersQuantity;
    }

    public void setListenersQuantity(int listenersQuantity) {
        this.listenersQuantity = listenersQuantity;
    }

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    @Column(name = "day_week")
    public int getDayWeek() {
        return dayWeek;
    }

    public void setDayWeek(int dayWeek) {
        this.dayWeek = dayWeek;
    }

    @OneToMany(mappedBy = "course", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<CourseTimetable> getTimetables() {
        return timetables;
    }

    public void setTimetables(Set<CourseTimetable> timetables) {
        this.timetables = timetables;
    }
    @Override
    public String toString() {
        return "Course{" +
                "name='" + name + '\'' +
                ", price=" + price +
                ", listenersQuantity=" + listenersQuantity +
                ", hours=" + hours +
                ", dayWeek=" + dayWeek +
                '}';
    }

}
