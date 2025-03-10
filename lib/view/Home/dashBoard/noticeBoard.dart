// TODO NoticeBoard


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Container buildeNoticeBoard() {
  return Container(
    height: 320.h,
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
      borderRadius: BorderRadius.circular(20.r),
    ),
    child: Column(
      children: [
        SizedBox(height: 5.h),
        Padding(
          padding:  EdgeInsets.all(20.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Notice Board",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20.sp,
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
          padding:  EdgeInsets.all(10.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                ' NO',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2E435B),
                  ),
                ),
              ),
              SizedBox(width: 40.w),
              Text(
                'ABOUT',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16.sp,
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
                  overflow: TextOverflow.ellipsis,
                  (index + 1).toString().padLeft(2, '0'),
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff2E435B),
                    ),
                  ),
                ),
                title: Row(
                  children: [
                    Container(
                      height: 35.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          overflow: TextOverflow.ellipsis,
                          notices[index]['title']!,
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2E435B),
                          ),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          notices[index]['subtitle']!,
                          style: GoogleFonts.poppins(
                            fontSize: 8.sp,
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