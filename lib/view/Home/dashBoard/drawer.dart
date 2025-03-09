//Todo Darwer
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildDrawerItem(String img, String title) {
  return ListTile(
    leading: Container(
      height: 30.h,
      width: 30.w,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),

      child: Image.asset(img, height: 20.h, width: 20.w),
    ),
    title: Text(
      title,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    onTap: () {},
  );
}


//DRAWER UI


Drawer buildDrawer() {
  return Drawer(
    backgroundColor: Color(0xff2E435B),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Color(0xff2E435B)),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(radius: 29.r),
                SizedBox(width: 20.w),
                Padding(
                  padding:EdgeInsets.only(top:14.h),
                  child: Text(
                    'Hamda Said',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //Listt batavo
        buildDrawerItem('asset/img/dash_dr.png', 'Dashboard'),
        buildDrawerItem('asset/img/teacher_dr.png', 'Teachers'),
        buildDrawerItem('asset/img/student_dr.png', 'Students'),
        buildDrawerItem('asset/img/NOTICE_DR.png', 'Notice'),
        buildDrawerItem('asset/img/SUBJECT_DR.png', 'Subject'),
        buildDrawerItem('asset/img/CLASSROUTINE_DR.png', 'Class Routine'),
        buildDrawerItem('asset/img/ATTENDANCE_DR.png', 'Attendance'),
        buildDrawerItem('asset/img/MESSAGE_DR.png', 'Message'),
        buildDrawerItem('asset/img/PROFILR_DR.png', 'Profile'),
        buildDrawerItem('asset/img/PRIVACY_DR.png', 'Privacy'),
        buildDrawerItem('asset/img/HEPL_DR.png', 'Help'),
        buildDrawerItem('asset/img/LOGOUT_DR.png', 'Log out'),
      ],
    ),
  );
}