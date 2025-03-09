import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/view/component/cancle_done_button.dart';
import 'package:project_1/view/component/title_build_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddSubjectScreen(),
    );
  }
}

class AddSubjectScreen extends StatelessWidget {
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
          'Add Subject',
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
      body: Padding(
        padding:  EdgeInsets.all(16.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            labeForSubject(lable: "Subject Name"),
            SizedBox(height: 3.h),
            Card(
              color: Colors.white,
              child: Padding(
                padding:  EdgeInsets.all(5.r),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Subject Name',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffB1B1B1),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            labelsForTextField(label: "Subject Code"),
            SizedBox(height: 5.h),
            Card(
              color: Colors.white,
              child: Padding(
                padding:  EdgeInsets.all(5.r),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Subject Code',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffB1B1B1),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    labeForSubject(lable: "Category"),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding:  EdgeInsets.all(8.0.r),
                          child: Image(
                            height: 40.h,
                            image: AssetImage('asset/img/Vector.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30.w),
                Column(
                  children: [
                    labeForSubject(lable: "Credits"),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding:  EdgeInsets.all(8.0.r),
                          child: Image(
                            height: 40.h,
                            image: AssetImage('asset/img/mdi_hours-12.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding:  EdgeInsets.only(bottom: 20.h, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [cancelButton(), SizedBox(width: 20.w), doneButton()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text labeForSubject({required String lable}) => Text(
    lable,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Color(0xff2E435B),
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
