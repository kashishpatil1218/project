import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/view/component/cancle_done_button.dart';
import 'package:table_calendar/table_calendar.dart';

class MyEarningsScreen extends StatefulWidget {
  @override
  _MyEarningsScreenState createState() => _MyEarningsScreenState();
}

class _MyEarningsScreenState extends State<MyEarningsScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Earnings',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 18.sp,
              color: Color(0xff2E435B),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff2E435B),
              shape: BoxShape.circle,
            ),
            child: Image.asset('asset/img/MAIN.png'),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This month",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              "₹ 13,446",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 42.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2E435B),
                ),
              ),
            ),
            SizedBox(height: 18.h),
            // Calendar
            TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              daysOfWeekVisible: false,
              calendarFormat: CalendarFormat.month,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.rectangle,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                titleTextStyle: GoogleFonts.poppins(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2E435B),
                ),
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  color: Color(0xff2E435B),
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: Color(0xff2E435B),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 45.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 2.r,
                        blurRadius: 5.r,
                      ),
                    ],
                  ),
                  child: Image.asset('asset/img/catppuccin_pdf.png'),
                ),
                SizedBox(width: 20.w),
                Container(
                  height: 45.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: 2.r,
                        blurRadius: 5.r,
                      ),
                    ],
                  ),
                  child: Image.asset('asset/img/DOWNLOAD.png'),
                ),
              ],
            ),
            Spacer(),
            Align(alignment: Alignment.bottomRight, child: doneButton()),
          ],
        ),
      ),
    );
  }
}
