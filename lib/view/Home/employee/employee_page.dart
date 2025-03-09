//TODO page 2

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({super.key});

  final List<Map<String, String>> teachers = const [
    {"name": "Aisha Abd", "image": "https://via.placeholder.com/50"},
    {"name": "Taif Al-Amri", "image": "https://via.placeholder.com/50"},
    {"name": "Mona Al Gurg", "image": "https://via.placeholder.com/50"},
    {"name": "happy hope", "image": "https://via.placeholder.com/50"},
    {"name": "Aisha Abd", "image": "https://via.placeholder.com/50"},
    {"name": "Elisa Freiha", "image": "https://via.placeholder.com/50"},
    {"name": "horses", "image": "https://via.placeholder.com/50"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Employee',
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
            padding:  EdgeInsets.all(8.r),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2E435B),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon:  Icon(
                  Icons.edit_calendar_sharp,
                  color: Colors.white,
                  size: 18.sp,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.all(10.0.r),
        child: ListView.builder(
          itemCount: teachers.length,
          itemBuilder: (context, index) {
            final teacher = teachers[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              margin:  EdgeInsets.symmetric(vertical: 4.h),
              child: ListTile(
                contentPadding:  EdgeInsets.all(10.r),
                leading: Container(
                  height: 46.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),

                title: Text(
                  teacher["name"]!,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xff2E435B),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                subtitle: Text(
                  "Teacher",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xff2E435B),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                trailing: Wrap(
                  spacing: 10.w,
                  children: [
                    Container(
                      height: 28.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                        color: Color(0xff2E435B),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.messenger_outline,
                          color: Colors.white,
                          size: 13.sp,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 28.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                        color: Color(0xff2E435B),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon:  Icon(
                          Icons.add_ic_call_rounded,
                          color: Colors.white,
                          size: 13.sp,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),

    );
  }
}
