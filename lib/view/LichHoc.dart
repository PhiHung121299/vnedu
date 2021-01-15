import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vnedu/view/HomePage.dart';

class Calenda extends StatelessWidget {
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
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  String formatDateTime(DateTime dateTime) {
    return 'Thứ ${dateTime.weekday}, ngày ${dateTime.day} tháng ${dateTime
        .month} năm ${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    goBack(BuildContext context) {
      Navigator.pop(context);
    }

    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
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
              buildTableCalendar(),
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
              ItemCongViec(),
            ],
          ),
        ),
      ),
    );
  }

  TableCalendar buildTableCalendar() {
    return TableCalendar(
      initialCalendarFormat: CalendarFormat.week,
      headerVisible: false,
      startingDayOfWeek: StartingDayOfWeek.monday,
      builders: CalendarBuilders(
        dayBuilder: (context, date, events) =>
            Container(
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFFFFEBE9),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Text(
                  date.day.toString(),
                  style: TextStyle(color: Color(0xFFBB2643)),
                )),
        selectedDayBuilder: (context, date, events) =>
            Container(
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(8.0)),
                child: Text(
                  date.day.toString(),
                  style: TextStyle(color: Colors.white),
                )),
        todayDayBuilder: (context, date, events) =>
            Container(
                margin: const EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFFBB2643),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Text(
                  date.day.toString(),
                  style: TextStyle(color: Colors.white),
                )),
      ),
      calendarController: _controller,
    );
  }

  Container chage_calenda(String s) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      width: MediaQuery
          .of(context)
          .size
          .width * 0.1,
      height: MediaQuery
          .of(context)
          .size
          .height * 0.06,
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

class ItemCongViec extends StatelessWidget {
  const ItemCongViec({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    Material myIteam(IconData icon, String monhoc, int bgcoloricon, int bgItem,
        String noidung, String sohoclieu, String hoanthanh, String phantram) {
      return Material(
        child: Container(
          margin: EdgeInsets.only(top: 3),
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
                    color: Color(bgItem)),
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
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(bgcoloricon)),
                                child: Icon(
                                  icon,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                child: Text(
                                  monhoc,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: width * 0.5 - 10,
                                  child: Text(noidung,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Số học liệu: ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                                Text(sohoclieu,
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
                                Text(hoanthanh,
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
                        child: Text(phantram + ' %',
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
      );
    }

    return Column(
      children: [
        myIteam(
            Icons.ac_unit,
            'Môn hóa',
            //màu nền icon
            0xFFEF9A9A,
            //màu nền item
            0xffFFEBE9,
            //nội dung
            'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
            //số học liệu
            '12',
            //học liệu hoàn thành
            '8',
            //tỉ lệ %
            '85'),
        myIteam(
            Icons.cast_for_education,
            'Môn hóa',
            0xFFEF9A9A,
            0xffFFEBE9,
            'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
            '12',
            '8',
            '85'),
        myIteam(
            Icons.lightbulb_outline,
            'Môn vật lý',
            0xFF833B78,
            0xFFE0CEDD,
            'Kiểm tra môn Vật lý',
            '1h',
            'giới hạn',
            '85'),
        myIteam(
            Icons.cast_for_education,
            'Môn hóa',
            0xFFEF9A9A,
            0xffFFEBE9,
            'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
            '12',
            '8',
            '85'),
        myIteam(
            Icons.cast_for_education,
            'Môn hóa',
            0xFFEF9A9A,
            0xffFFEBE9,
            'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
            '12',
            '8',
            '85')
      ],
    );
  }
}
