import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:table_calendar/table_calendar.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  // final List<Notice> notices = [
  final List<Map<String, String>> notices = [
    {
      'title': 'Test exam',
      'subtitle': 'Test examination held on 3 March',
      'image': 'assets/exam.png',
    },
    {
      'title': 'Annual sports',
      'subtitle': 'Annual sports arrange on 13 April',
      'image': 'assets/sports.png',
    },

    {
      'title': 'Picnic',
      'subtitle': 'Students organize an exciting picnic',
      'image': 'assets/picnic.png',
    },
    {
      'title': 'Foundation day',
      'subtitle': 'Our school celebrates its foundation day',
      'image': 'assets/foundation.png',
    },
  ];

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
      drawer: Drawer(
        backgroundColor: Color(0xff2E435B),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff2E435B)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(radius: 30),
                  SizedBox(height: 10),
                  Text(
                    'Hamda Said',
                    style: TextStyle(
                      color: Color(0xff2E435B),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _buildDrawerItem(Icons.dashboard, "Dashboard"),
            _buildDrawerItem(Icons.people, "Teachers"),
            _buildDrawerItem(Icons.school, "Students"),
            _buildDrawerItem(Icons.notifications, "Notice"),
            _buildDrawerItem(Icons.book, "Subject"),
            _buildDrawerItem(Icons.schedule, "Class Routine"),
            _buildDrawerItem(Icons.check_circle, "Attendance"),
            _buildDrawerItem(Icons.message, "Message"),
            _buildDrawerItem(Icons.person, "Profile"),
            _buildDrawerItem(Icons.lock, "Privacy"),
            _buildDrawerItem(Icons.help, "Help"),
            _buildDrawerItem(Icons.logout, "Log out"),
          ],
        ),
      ),

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
                            _buildEventCard(
                              'Foundation Day',
                              'Our school celebrates its foundation day',
                              '18Feb, 2024',
                              Colors.green,
                            ),
                            SizedBox(height: 15),
                            _buildEventCard(
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

  //TODO  student PieeChart
  Container buildStudentPieChart() {
    return Container(
      height: 460,
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
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Students',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff2E2E30),
              ),
            ),
            SfCircularChart(
              series: <CircularSeries>[
                DoughnutSeries<_ChartData, String>(
                  dataSource: [
                    _ChartData('Male', 75, Colors.yellow),
                    _ChartData('Female', 25, Colors.orange),
                  ],
                  xValueMapper: (_ChartData data, _) => data.label,
                  yValueMapper: (_ChartData data, _) => data.value,
                  pointColorMapper: (_ChartData data, _) => data.color,
                  innerRadius: '75%',
                  dataLabelSettings: DataLabelSettings(isVisible: false),
                ),
              ],
              annotations: <CircularChartAnnotation>[
                CircularChartAnnotation(
                  widget: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text(
                              '100%',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Divider(thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                studentChatRow(name: 'Male Students', range: '75%'),
                VerticalDivider(thickness: 5, color: Colors.black),
                studentChatRow(name: 'Female Students', range: '25%'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // TODO NoticeBoard
  Container buildeNoticeBoard() {
    return Container(
      height: 400,
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
                  "Notice Board",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2E435B),
                    ),
                  ),
                ),
                Image.asset('asset/img/add.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  ' NO',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2E435B),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  'ABOUT',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2E435B),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notices.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    (index + 1).toString().padLeft(2, '0'),
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2E435B),
                      ),
                    ),
                  ),
                  title: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notices[index]['title']!,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff2E435B),
                            ),
                          ),
                          Text(
                            maxLines: 1,
                            notices[index]['subtitle']!,
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff2E435B),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  //TODO piechart vado bottom Row
  Widget studentChatRow({required String name, required String range}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xff2E435B),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          range,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xff070707),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  //TODO DashBoard Conatiner no smart Widget
  Widget dashBoardContainer({
    required String title,
    required String subTitle,
    required String img,
  }) {
    return Container(
      height: 120,
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListTile(
          title: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              color: Color(0xff2E435B),
            ),
          ),

          subtitle: Padding(
            padding: const EdgeInsets.only(top: 15, left: 5),
            child: Text(
              subTitle,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xff2E435B),
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          trailing: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xff2E435B),
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(img)),
            ),
          ),
        ),
      ),
    );
  }
}

// TODO Piechart mate
class _ChartData {
  final String label;
  final double value;
  final Color color;

  _ChartData(this.label, this.value, this.color);
}

//TODo Notice Board mate
// class Notice {
//   final String title;
//   final String description;
//   final String imagePath;
//
//   Notice(this.title, this.description, this.imagePath);
// }

// Widget _noticeItem(int number, Notice notice) {
//   return ListTile(
//     leading: Text(
//       number.toString().padLeft(2, '0'),
//       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//     ),
//     title: Row(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: Image.asset(
//             notice.imagePath,
//             width: 40,
//             height: 40,
//             fit: BoxFit.cover,
//           ),
//         ),
//         SizedBox(width: 10),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               notice.title,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 4),
//             Text(
//               notice.description,
//               style: TextStyle(fontSize: 14, color: Colors.grey),
//             ),
//           ],
//         ),
//       ],
//     ),
//   );
// }
//TODO calander
Widget _buildEventCard(
  String title,
  String subtitle,
  String date,
  Color color,
) {
  return Container(
    height: 62,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: ListTile(
          leading: Icon(Icons.square, color: color, size: 20),
          title: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff070707),
              ),
            ),
          ),
          subtitle: Text(
            subtitle,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w500,
                color: Color(0xffB1B1B1),
              ),
            ),
          ),
          trailing: Text(
            date,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w500,
                color: Color(0xffB1B1B1),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
//Todo Darwer
Widget _buildDrawerItem(IconData icon, String title) {
  return ListTile(
    leading: Icon(icon, color: Colors.white),
    title: Text(title, style: TextStyle(color: Colors.white)),
    onTap: () {},
  );
}
