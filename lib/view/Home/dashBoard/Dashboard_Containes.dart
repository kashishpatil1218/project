//TODO DashBoard Conatiner no smart Widget


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget dashBoardContainer({
  required String title,
  required String subTitle,
  required String img,
}) {
  return Container(
    height: 100.h,
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
    child: Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            color: Color(0xff2E435B),
          ),
        ),

        subtitle: Padding(
          padding:EdgeInsets.only(top: 15.h, left: 5.w),
          child: Text(
            subTitle,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Color(0xff2E435B),
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        trailing: Container(
          height: 38.h,
          width: 38.w,
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