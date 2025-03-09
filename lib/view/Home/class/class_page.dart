import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassScreen extends StatelessWidget {
  const ClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        title: Text(
          'Class Routine',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            children: [
              buildCategoryTile("Pre-Primary"),
              buildCategoryTile("Primary"),
              buildCategoryTile("Secondary"),
              ExpansionTile(
                title: Text(
                  "Higher Secondary",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2E435B),
                    ),
                  ),
                ),
                children: [
                  buildSubjectTile("Stander", "11th commerce"),
                  buildSubjectTile("Stander", "12th commerce"),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryTile(String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5.r, spreadRadius: 1.r),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff2E435B),
            ),
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 14.sp,
          color: Color(0xff2E435B),
        ),
        onTap: () {},
      ),
    );
  }

  Widget buildSubjectTile(String subject, String code) {
    return ListTile(
      title: Text(
        subject,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff2E435B),
          ),
        ),
      ),
      trailing: Text(
        code,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xffB1B1B1),
          ),),
      ),
      onTap: () {},
    );
  }
}
