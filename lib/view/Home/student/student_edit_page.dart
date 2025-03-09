import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/cancle_done_button.dart';

class StudentEditPage extends StatefulWidget {
  @override
  _StudentEditPageState createState() => _StudentEditPageState();
}

class _StudentEditPageState extends State<StudentEditPage> {
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
              SizedBox(height: 18.h),
              buildTextField("Name", "Lily Al Yamahi"),
              buildTextField("Phone Number", "+966539293313"),
              buildTextField("Email", "xrobinson@aol.com"),
              buildTextField("Address", "53 Suwar Street, Thaqif"),
              Row(
                children: [
                  Expanded(child: buildTextField("Roll No", "250")),
                  SizedBox(width: 5.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gender",
                          style: GoogleFonts.poppins(
                            color: Color(0xff2E435B),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          children: [
                            genderButton("Male"),
                            SizedBox(width: 10.w),
                            genderButton("Female"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Padding(
                padding:  EdgeInsets.only(bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [cancelButton(), SizedBox(width: 20.w), doneButton()],
                ),
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
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: value,
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 13.h),
      ],
    );
  }

  Widget genderButton(String gender) {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical:7.h),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              selectedGender = gender;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                selectedGender == gender ? Color(0xff2E435B) : Colors.white,
            foregroundColor:
                selectedGender == gender ? Colors.white : Colors.black,
            side: BorderSide(color: Colors.white),
            fixedSize: Size(140.w, 40.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          child: Text(
            gender,
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }


}
