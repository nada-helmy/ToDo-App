import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Taskwidget.dart';
import 'styles/mycolors.dart';


class TaskTab extends StatelessWidget {
  const TaskTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
          calendarStyle:CalendarStyle(
            canMarkersOverflow: true,
            cellMargin:const EdgeInsets.all(6.0) ,
            cellPadding:const EdgeInsets.all(6.0) ,
            isTodayHighlighted:true ,
            tableBorder: TableBorder(
                borderRadius: BorderRadius.circular(22)
            ),
            tablePadding:EdgeInsets.all(10) ,
            todayDecoration: BoxDecoration(
                color: Mycolors.blue, shape: BoxShape.circle),
            todayTextStyle:TextStyle(
                fontSize: 23.0) ,
            defaultDecoration:BoxDecoration(shape: BoxShape.circle),
            defaultTextStyle: TextStyle(
                fontSize: 25.0,
                color: Mycolors.grey
            ),
            selectedTextStyle:TextStyle(
                fontSize: 25.0,
                color: Mycolors.grey
            ),
            selectedDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orangeAccent
            ),
            weekendTextStyle: TextStyle(
                fontSize: 25.0,
                color: Mycolors.grey
            ),
          ) ,
          headerStyle:HeaderStyle(
            titleTextStyle: TextStyle(
              fontSize: 30,
              color: Mycolors.blue,
              fontWeight: FontWeight.w700,
            ),
            formatButtonVisible: false,
            headerMargin:const EdgeInsets.all(4.0) ,
            titleCentered:false ,
          ) ,
          daysOfWeekHeight:30.0 ,
          calendarFormat: CalendarFormat.week,
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              fontSize: 20,
              color: Mycolors.semiblack,
              fontWeight: FontWeight.bold,
            ),
            weekendStyle: TextStyle(
              fontSize: 20,
              color: Mycolors.semiblack,
              fontWeight: FontWeight.bold,
            ),
          ) ,
          // currentDay: //todo,
          // onDaySelected://todo ,
        ),
        SizedBox(height: 20.0),
        Taskwidget(),
      ],
    );
  }
}
