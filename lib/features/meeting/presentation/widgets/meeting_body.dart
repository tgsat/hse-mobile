import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:table_calendar/table_calendar.dart';

class MeetingBody extends StatelessWidget {
  const MeetingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          firstDay: DateTime(DateTime.now().year - 10, 10, 16),
          lastDay: DateTime(DateTime.now().year + 10, 3, 14),
          //focusedDay: state.focusedDay,
          focusedDay: DateTime.now(),
          locale: 'id_ID',
          //selectedDayPredicate: (day) => isSameDay(state.selectedDay, day),
          startingDayOfWeek: StartingDayOfWeek.monday,
          calendarFormat: CalendarFormat.month,
          calendarStyle: CalendarStyle(
            rangeHighlightColor: ColorConfig.primaryColor,
            todayDecoration: new BoxDecoration(
              color: Colors.orangeAccent,
              shape: BoxShape.circle,
            ),
            selectedDecoration: new BoxDecoration(
              color: ColorConfig.primaryColor,
              shape: BoxShape.circle,
            ),
            markerDecoration: new BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
            // BlocProvider.of<JkoMonthlyBloc>(context)
            //   ..add(
            //     JkoMonthlySelected(
            //         selectedDay: selectedDay, focusedDay: focusedDay),
            //   );
          },
          eventLoader: (DateTime day) {
            // return state.events[CustomDateFormat.removeZFormat(day)] ??
            //     [];
            return [];
          },
          onPageChanged: (DateTime date) {
            print("onPageChanged: $date");
            // BlocProvider.of<JkoMonthlyBloc>(context)
            //     .add(JkoMonthlyStarted(month: date));
          },
        ),
        SizedBox(height: SizeConfig.marginActivity),
        Expanded(
          child: ListView.builder(
            // itemCount: state.selectedEvents!.length,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: SizeConfig.marginActivity,
                  vertical: 4.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(
                    SizeConfig.radiusCard,
                  ),
                ),
                child: ListTile(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => InputFormPage(
                    //       idProject:
                    //           state.selectedEvents![index].proyekId,
                    //       date: state.selectedEvents![index].tglBackdate
                    //           .toString(),
                    //       isEditable: false,
                    //     ),
                    //   ),
                    // );
                  },
                  title: Text('Event: $index'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
