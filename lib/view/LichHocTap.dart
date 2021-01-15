import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vnedu/view/HomePage.dart';

class Calenda2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calenda_learing(),
    );
  }
}

class calenda_learing extends StatefulWidget {
  @override
  _calenda_learingState createState() => _calenda_learingState();
}

class _calenda_learingState extends State<calenda_learing> {
  @override
  void initState() {
    super.initState();
  }

  String formatDateTime(DateTime dateTime) {
    return 'Thứ ${dateTime.weekday}, ngày ${dateTime.day} tháng ${dateTime.month} năm ${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    goBack(BuildContext context) {
      Navigator.pop(context);
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      },
                      // onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text(
                      "Lịch Học Tập",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    formatDateTime(DateTime.now()),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.event,
                      color: Color(0xffBB2634),
                    ),
                    onPressed: () {
                      DatePicker.showDateTimePicker(context,
                          showTitleActions: true, onChanged: (date) {
                        print('change $date in time zone ' +
                            date.timeZoneOffset.inHours.toString());
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime.now());
                    },
                  ),
                ],
              ),

             // LICH(),
              Row(
                children: [
                  Container(
                    width: width * 0.2,
                    child: Text("09:00 AM"),
                  ),
                  Container(
                    height: 2,
                    width: 200,
                    color: Color(0xffE0E0E0),
                  ),
                ],
              ),
              Container(
                height: 137,
                child: Row(
                  children: [
                    Container(
                      width: 76,
                      height: 25,
                      child: Center(
                        child: Text(
                          "09:00 AM",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.7,
                      height: height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFFFEBEE)),
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFFEF9A9A)),
                                      child: Icon(Icons.ac_unit),
                                    ),
                                    Container(
                                      child: Text(
                                        "Môn Hóa",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: width * 0.6 - 10,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: width * 0.5 - 10,
                                        child: Text(
                                            "H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width * 0.5,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Số học liệu: ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                      Text("12",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700)),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Text("Hoàn thành: ",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      Text("8",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: width * 0.1,
                              child: Text("85%",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.red)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container chage_calenda(String s) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
          color: Color(0xFFFCE4EC), borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          "$s",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
MeetingDataSource _getCalendarDataSource() {
  List<Meeting> meetings = <Meeting>[];

  DateTime exceptionDate = DateTime(2021, 1, 15);
  meetings.add(Meeting(
      eventName: 'meeting',
      from:  DateTime(2021,01,15, 10,00),
      to: DateTime(2021,01,15, 12,00),
      background: Colors.green,
      isAllDay: false,
      recurrenceRule: 'FREQ=DAILY;COUNT=20',
      exceptionDates: <DateTime>[exceptionDate]));

  return MeetingDataSource(meetings);
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments[index].to;
    return appointments[index].from;
  }

  @override
  DateTime getEndTime(int index) {
  }

  @override
  bool isAllDay(int index) {
    return appointments[index].isAllDay;
  }

  @override
  String getSubject(int index) {
    return appointments[index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments[index].background;
  }

  @override
  String getRecurrenceRule(int index) {
    return appointments[index].recurrenceRule;
  }

  @override
  List<DateTime> getRecurrenceExceptionDates(int index) {
    return appointments[index].exceptionDates;
  }
}

class Meeting {
  Meeting(
      {this.eventName,
        this.from,
        this.to,
        this.background,
        this.isAllDay,
        this.recurrenceRule,
        this.exceptionDates});

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
  String recurrenceRule;
  List<DateTime> exceptionDates;
}
class LICH extends StatefulWidget {
  @override
  _LICHState createState() => _LICHState();
}

class _LICHState extends State<LICH> {
  CalendarView _calendarView;
  String _headerText,
      _viewHeaderText,
      _viewHeaderText1,
      _viewHeaderText2,
      _viewHeaderText3,
      _viewHeaderText4,
      _viewHeaderText5,
      _viewHeaderText6,
      _dateText,
      _dateText1,
      _dateText2,
      _dateText3,
      _dateText4,
      _dateText5,
      _dateText6;
  String date;
  double width, cellWidth;

  @override
  void initState() {
    _headerText = 'header';
    _viewHeaderText = 'viewheader';
    _viewHeaderText1 = 'viewheader';
    _viewHeaderText2 = 'viewheader';
    _viewHeaderText3 = 'viewheader';
    _viewHeaderText4 = 'viewheader';
    _viewHeaderText5 = 'viewheader';
    _viewHeaderText6 = 'viewheader';
    _dateText = 'date';
    _dateText1 = 'date';
    _dateText2 = 'date';
    _dateText3 = 'date';
    _dateText4 = 'date';
    _dateText5 = 'date';
    _dateText6 = 'date';
    _calendarView = CalendarView.week;
    width = 0.0;
    cellWidth = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    cellWidth = width / 8;
    return Container(height: 500,
      child: MaterialApp(
        home: Scaffold(
          body: Container(
            child: SfCalendar(
              view: CalendarView.day,
              dataSource: _getCalendarDataSource(),
              appointmentTextStyle: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFd89cf6),
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );

  }

}
