import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendanceStudent extends StatefulWidget {
  AttendanceStudent({super.key});

  @override
  State<AttendanceStudent> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceStudent> {
  final List<Map<String, String>> teachers = [
    {"name": "Aisha Abd", "role": "Teacher", "image": "assets/aisha.jpg"},
    {"name": "Hessa Khalfan", "role": "Teacher", "image": "assets/hessa.jpg"},
    {"name": "Hamda Said", "role": "Teacher", "image": "assets/hamda.jpg"},
    {"name": "Sarah Salmin", "role": "Teacher", "image": "assets/sarah.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Attendance",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff2E435B),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding:  EdgeInsets.all(8.0.r),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff2E435B),
              shape: BoxShape.circle,
            ),
            child: Image.asset('asset/img/MAIN.png'),
          ),
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.all(8.0.r),
            child: Container(
              height: 32.h,
              width: 32.w,
              decoration: BoxDecoration(
                color: Color(0xff2E435B),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('asset/img/search_MAIN.png'),
                ),
              ),
            ),
          ),
        ],
      ),

      body: ListView.builder(
        padding:  EdgeInsets.all(8.r),
        itemCount: teachers.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(teachers[index]["name"]!), // Unique Key
            direction: DismissDirection.endToStart, // Right swipe to delete
            onDismissed: (direction) {
              setState(() {
                teachers.removeAt(index); // Remove from list
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${teachers[index]["name"]} deleted")),
              );
            },

            // 🔴 Background Delete Icon
            background: Container(
              height: 36.h,
              width: 36.w,
              decoration: BoxDecoration(color: Colors.red,shape: BoxShape.circle),
              // alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Center(child: Icon(Icons.delete, color: Colors.white, size: 30.sp)),
            ),

            child: TeacherCard(
              name: teachers[index]["name"]!,
              role: teachers[index]["role"]!,
              image: teachers[index]["image"]!,
            ),
          );
        },
      ),
    );
  }
}

class TeacherCard extends StatefulWidget {
  final String name;
  final String role;
  final String image;

  const TeacherCard({
    required this.name,
    required this.role,
    required this.image,
    super.key,
  });

  @override
  State<TeacherCard> createState() => _TeacherCardState();
}

class _TeacherCardState extends State<TeacherCard> {
  bool isExpanded = false;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:  EdgeInsets.only(bottom: 8.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      child: ExpansionTile(
        onExpansionChanged: (value) {
          setState(() {
            isExpanded = value;
          });
        },
        title: Row(
          children: [
            Container(
              height: 40.h,
              width: 45.w,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2E435B),
                    ),
                  ),
                ),
                Text(
                  widget.role,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2E435B),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Image.asset('asset/img/uis_calender.png'),
          ],
        ),
        children:
        isExpanded
            ? [
          Padding(
            padding:  EdgeInsets.all(10.0.r),
            child: TableCalendar(
              currentDay: _selectedDay,

              firstDay: DateTime.utc(2021, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: DateTime.now(),
              daysOfWeekVisible: false,

              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarFormat: CalendarFormat.month,
              availableCalendarFormats: {CalendarFormat.month: ''},
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: false,
                titleTextStyle: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),

              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.rectangle,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 5.h,
            ),
            child: Padding(
              padding:  EdgeInsets.only(bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 25.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        "A",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 25.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        "P",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ]
            : [],
      ),
    );
  }
}
