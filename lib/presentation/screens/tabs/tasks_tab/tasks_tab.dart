import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_c12_offline/core/colors_manager.dart';
import 'package:todo_app_c12_offline/core/reusable_components/task_item.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          EasyDateTimeLine(
            initialDate: DateTime.now(),
            onDateChange: (selectedDate) {
              //`selectedDate` the new date selected.
              // print(selectedDate.toString());
            },
            headerProps: const EasyHeaderProps(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 0),
              showHeader: true,
              monthPickerType: MonthPickerType.switcher,
              dateFormatter: DateFormatter.fullDateDMY(),
            ),
            dayProps: const EasyDayProps(
              height: 80,
              dayStructure: DayStructure.dayStrDayNum,
              activeDayStyle: DayStyle(
                dayNumStyle: TextStyle(
                    fontSize: 14,
                    color: ColorsManager.blueColor,
                    fontWeight: FontWeight.w600),
                dayStrStyle: TextStyle(color: ColorsManager.blueColor),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [
                    //     ///Color(0xff3371FF),
                    //     //Color(0xff8426D6),
                    //     Colors.blue,
                    //     Colors.blueAccent
                    //   ],
                    // ),
                    color: Colors.white),
              ),
              inactiveDayStyle: DayStyle(
                dayNumStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
                dayStrStyle: TextStyle(color: Colors.black),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [
                    //     ///Color(0xff3371FF),
                    //     //Color(0xff8426D6),
                    //     Colors.blue,
                    //     Colors.blueAccent
                    //   ],
                    // ),
                    color: Colors.white),
              ),
            ),
          ),
          TaskItem(),
        ],
      ),
    );
  }
}
