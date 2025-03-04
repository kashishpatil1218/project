import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/view/Home/dashBoard/pie_chart.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Dashboard_Containes.dart';
import 'calander.dart';
import 'drawer.dart';
import 'noticeBoard.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;

  //TODO calander
  DateTime _focusedDay = DateTime.now();

  //TODO calander
  DateTime? _selectedDay;

  //TODO calander
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
            // color: Colors.blueGrey.shade800,
          },
          child: Image(
            image: AssetImage('asset/img/menu.png'),
            height: 30,
            width: 30,
          ),
        ),
        title: Image(image: AssetImage('asset/img/search.png')),
        actions: [
          Image(image: AssetImage('asset/img/notification.png')),
          SizedBox(width: 25),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                'https://static.vecteezy.com/system/resources/previews/042/332/098/non_2x/default-avatar-profile-icon-grey-photo-placeholder-female-no-photo-images-for-unfilled-user-profile-greyscale-illustration-for-socail-media-web-vector.jpg',
              ),
            ),
          ),
        ],
      ),
      drawer: buildDrawer(),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        //TODO dhasboard
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              dashBoardContainer(
                title: 'Teacher',
                subTitle: '346',
                img: 'asset/img/ph_chalkboard-teacher-bold.png',
              ),
              dashBoardContainer(
                title: 'Students',
                subTitle: '8,342',
                img: 'asset/img/icon.png',
              ),
              dashBoardContainer(
                title: 'Employee',
                subTitle: '161',
                img: 'asset/img/emlloyyee.png',
              ),
              dashBoardContainer(
                title: 'Earning',
                subTitle: '₹ 13,446',
                img: 'asset/img/earn.png',
              ),
              //TODO chart Container
              buildStudentPieChart(),
              //TODO Notice board container
              buildeNoticeBoard(),
              //TODo Evenet Calender
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 657,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2,
                        spreadRadius: 2,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Events Calendar",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff2E435B),
                                ),
                              ),
                            ),
                            Image.asset('asset/img/menu22.png'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildEventCard(
                              'Foundation Day',
                              'Our school celebrates its foundation day',
                              '18Feb, 2024',
                              Colors.green,
                            ),
                            SizedBox(height: 15),
                            buildEventCard(
                              'Picnic',
                              'Students organize an exciting picnic',
                              '22Feb, 2024',
                              Colors.red,
                            ),
                            SizedBox(height: 10),
                            TableCalendar(
                              focusedDay: _focusedDay,
                              firstDay: DateTime.utc(2020, 1, 1),
                              lastDay: DateTime.utc(2030, 12, 31),
                              daysOfWeekVisible: false,
                              calendarFormat: _calendarFormat,
                              selectedDayPredicate: (day) {
                                return isSameDay(_selectedDay, day);
                              },
                              onDaySelected: (selectedDay, focusedDay) {
                                setState(() {
                                  _selectedDay = selectedDay;
                                  _focusedDay = focusedDay;
                                });
                              },
                              headerStyle: HeaderStyle(
                                formatButtonVisible: false,

                                titleTextStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              calendarStyle: CalendarStyle(
                                todayDecoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.rectangle,
                                ),
                                selectedDecoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.rectangle,
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
            ],
          ),
        ),
      ),
    );
  }
}
