import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/modules/tasks/widgets/widgets_view.dart';

class TasksView extends StatefulWidget {
  TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  final EasyInfiniteDateTimelineController _controller =
      EasyInfiniteDateTimelineController();
  var _focusDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: mediaQuery.size.height * 0.22,
                width: mediaQuery.size.width,
                color: theme.primaryColor,
                padding: EdgeInsets.only(left: 20, right: 20, top: 70),
                child: Text(
                  "To DO List",
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 140,
                child: SizedBox(
                  width: mediaQuery.size.width,
                  child: EasyInfiniteDateTimeLine(
                    controller: _controller,
                    firstDate: DateTime(2024),
                    focusDate: _focusDate,
                    lastDate: DateTime(2025, 12, 31),
                    onDateChange: (selectedDate) {
                      setState(() {
                        _focusDate = selectedDate;
                      });
                    },
                    dayProps: EasyDayProps(
                        activeDayStyle: DayStyle(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      dayStrStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor),
                      dayNumStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor),
                      monthStrStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor),
                    ),
                        inactiveDayStyle:  DayStyle(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          dayStrStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF363636)),
                          dayNumStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF363636)),
                          monthStrStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            color: Color(0xFF363636)),
                        ),
                    ),
                    showTimelineHeader: false,

                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) =>WidgetsView() ,itemCount: 10,))
      ],
    );
  }
}
