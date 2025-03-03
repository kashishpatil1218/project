import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:syncfusion_flutter_charts/charts.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({super.key});

  final List<Notice> notices = [
    Notice(
      'Test exam',
      'Test examination held on 3 March',
      'assets/test_exam.png',
    ),
    Notice(
      'Annual sports',
      'Annual sports arrange on 13 April',
      'assets/annual_sports.png',
    ),
    Notice(
      'Picnic',
      'Students organize an exciting picnic',
      'assets/picnic.png',
    ),
    Notice(
      'Foundation day',
      'Our school celebrates its foundation day',
      'assets/foundation_day.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image(
          image: AssetImage('asset/img/menu.png'),
          height: 30,
          width: 30,
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
              Container(
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
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
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
                            pointColorMapper:
                                (_ChartData data, _) => data.color,
                            innerRadius: '75%',
                            dataLabelSettings: DataLabelSettings(
                              isVisible: false,
                            ),
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
              ),

              Container(
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
                child: Column(
                  children: [
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Notice Board",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: .5,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.add),
                        ],
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

class _ChartData {
  final String label;
  final double value;
  final Color color;

  _ChartData(this.label, this.value, this.color);
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
class Notice {
  final String title;
  final String description;
  final String imagePath;

  Notice(this.title, this.description, this.imagePath);
}

Widget _noticeItem(int number, Notice notice) {
  return ListTile(
    leading: Text(
      number.toString().padLeft(2, '0'),
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    title: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            notice.imagePath,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              notice.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              notice.description,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ],
    ),
  );
}
