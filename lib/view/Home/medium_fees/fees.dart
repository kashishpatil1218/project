import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fees_page_component.dart';

class FeesScreen extends StatefulWidget {
  @override
  _FeesScreenState createState() => _FeesScreenState();
}

class _FeesScreenState extends State<FeesScreen> {
  String selectedClass = "Standard - 6";
  String selectedDivision = "Division B";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fees',
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
      ),
      body: Padding(
        padding:  EdgeInsets.all(14.0.r),
        child: Column(
          children: [
            // Dropdown Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: dropdownButton(
                    selectedClass,
                    ["Standard - 6", "Standard - 7", "Standard - 8"],
                    (value) {
                      setState(() {
                        selectedClass = value!;
                      });
                    },
                  ),
                ),
                Card(
                  child: dropdownButton(
                    selectedDivision,
                    ["Division A", "Division B", "Division C"],
                    (value) {
                      setState(() {
                        selectedDivision = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),

            // Search Button
            Padding(
              padding:  EdgeInsets.all(8.0.r),
              child: Container(
                height: 44.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff2E435B),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    'Search',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),

            // Students List
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return studentCard(students[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
