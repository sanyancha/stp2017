package by.bsuir.myappspringboot.service.util;

import by.bsuir.myappspringboot.entity.CourseTimetable;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public final class dateFormatCourseTimetable {

    public static List<CourseTimetable> changeDateCourseTimetable(List<CourseTimetable> ctList){
        List<CourseTimetable> courses1 = new ArrayList<>();

        for (CourseTimetable ct : ctList) {
            Date dtStart = ct.getStartDate();
            Date dtFinish = ct.getFinishDate();

            Calendar c1 = Calendar.getInstance();
            c1.setTime(dtStart);
            c1.add(Calendar.DATE, 1);
            dtStart = c1.getTime();
            ct.setStartDate(dtStart);

            c1.setTime(dtFinish);
            c1.add(Calendar.DATE, 1);
            dtFinish = c1.getTime();
            ct.setFinishDate(dtFinish);
            courses1.add(ct);
        }

        return courses1;



    }

}
