import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/cancle_done_button.dart';

class EmployeeEditPage extends StatefulWidget {
  @override
  _EmployeeEditPageState createState() => _EmployeeEditPageState();
}

class _EmployeeEditPageState extends State<EmployeeEditPage> {
  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Edit",
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
      ),
      body: Padding(
        padding:  EdgeInsets.all(18.r),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 45.r,
                backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/women/65.jpg',
                ),
              ),
              SizedBox(height: 20.h),
              buildTextField("Name", "Lily Al Yamahi"),
              buildTextField("Email", "xrobinson@aol.com"),
              buildTextField("Phone Number", "+966539293313"),
              buildTextField("Address", "53 Suwar Street, Thaqif"),

              SizedBox(height:80.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [cancelButton(), SizedBox(width: 20.w), doneButton()],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff2E435B),
          ),
        ),
        SizedBox(height: 5.h),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 2.h),
          child: Card(

            color: Colors.white,
            child: Padding(
              padding:  EdgeInsets.only(left: 8.w),
              child: TextField(
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: value,
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 12.h),
      ],
    );
  }
}