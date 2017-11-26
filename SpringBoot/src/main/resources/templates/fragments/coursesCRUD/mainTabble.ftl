<div class="row content">
    <div class="col-sm-2 col-xs-2 sidenav">

    </div>
    <div class="col-sm-8 col-xs-8">
        <table class="table">
            <thead>
            <tr>
                <th>Check</th>
                <th>ID</th>
                <th>Course Name</th>
                <th>Start date</th>
                <th>Finish date</th>
                <th>Total listeners quantity</th>
                <th>Hours</th>
                <th>Day in week</th>
                <th>Price,&nbsp;<span class="glyphicon glyphicon-usd"></th>
            </tr>
            </thead>
            <tbody class="planned-courses-list">

            <#list courseTimetable as row>
            <tr>
                <td><input type="checkbox"/>&nbsp;</td>
                <td>${row.id}</td>
                <td>${row.course.name}</td>
                <td>${row.startDate?date}</td>
                <td>${row.finishDate?date}</td>
                <td>${row.course.listenersQuantity}</td>
                <td>${row.course.hours}</td>
                <td>${row.course.dayWeek}</td>
                <td>${row.course.price}</td>
            </tr>
            </#list>

            </tbody>
        </table>
    </div>
    <div class="col-sm-2 col-xs-2 sidenav">
    </div>
</div>