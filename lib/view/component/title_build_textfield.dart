import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Align labelsForTextField({required String label}) {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding:  EdgeInsets.only(top: 10.h, left: 10.w),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Color(0xff2E435B),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}

Widget buildTextField( String hint, String s, {int maxLines = 1}) {
  return Padding(
    padding:  EdgeInsets.symmetric(vertical: 4.0.h),
    child: Card(
      color: Colors.white,
      child: Padding(
        padding:  EdgeInsets.only(left: 10.w,top: 5.h),
        child: TextField(
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          maxLines: maxLines,
          decoration: InputDecoration(

            hintText: hint,

            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}