//TODO piechart vado bottom Row
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Widget studentChatRow({required String name, required String range}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        name,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Color(0xff2E435B),
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Text(
        range,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Color(0xff070707),
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ],
  );
}


// TODO Piechart mate
class ChartData {
  final String label;
  final double value;
  final Color color;

  ChartData(this.label, this.value, this.color);
}


//TODO  student PieeChart
Container buildStudentPieChart() {
  return Container(
    height: 370.h,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 2.r,
          spreadRadius: 2.r,
        ),
      ],
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: Column(
        children: [
          SizedBox(height: 18.h),
          Text(
            'Students',
            style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff2E2E30),
            ),
          ),
          SfCircularChart(

            series: <CircularSeries>[
              DoughnutSeries<ChartData, String>(
                dataSource: [
                  ChartData('Male', 75, Colors.yellow),
                  ChartData('Female', 25, Colors.orange),
                ],
                xValueMapper: (ChartData data, _) => data.label,
                yValueMapper: (ChartData data, _) => data.value,
                pointColorMapper: (ChartData data, _) => data.color,
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
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            spreadRadius: 3.r,
                            blurRadius: 5.r,
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
                                fontSize: 20.sp,
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

          Divider(thickness: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              studentChatRow(name: 'Male Students', range: '75%'),
              VerticalDivider(thickness: 5.h, color: Colors.black),
              studentChatRow(name: 'Female Students', range: '25%'),
            ],
          ),
        ],
      ),
    ),
  );
}