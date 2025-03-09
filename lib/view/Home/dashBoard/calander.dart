//TODO calander
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildEventCard(
    String title,
    String subtitle,
    String date,
    Color color,
    ) {
  return Container(
    height: 62.h,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(15.r),
    ),
    child: Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: ListTile(
          leading: Icon(Icons.square, color: color, size: 20.sp),
          title: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff070707),
              ),
            ),
          ),
          subtitle: Text(
            subtitle,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 8.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xffB1B1B1),
              ),
            ),
          ),
          trailing: Text(
            date,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 8.sp,
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
