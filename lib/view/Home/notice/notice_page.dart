
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:project_1/view/component/cancle_done_button.dart';

class CreateNoticeScreen extends StatefulWidget {
  @override
  _CreateNoticeScreenState createState() => _CreateNoticeScreenState();
}

class _CreateNoticeScreenState extends State<CreateNoticeScreen> {
  TextEditingController txtTitle = TextEditingController();
  TextEditingController txtSubtitle = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            colorScheme: ColorScheme.light(
              primary: Colors.green,
              // Header background color
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Color(0xff2E435B),
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

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
          'Create A Notice',
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
        padding:  EdgeInsets.all(14.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18.h),
            titleForTxtfield(title: 'Title'),
            SizedBox(height: 4.h),
            Card(
              color: Colors.white,
              child: Padding(
                padding:  EdgeInsets.all(5.r),
                child: TextField(
                  style: TextStyle(color: Color(0xff2E435B),),
                  controller: txtTitle,
                  decoration: InputDecoration(
                    hintText: 'Title here...',
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
            SizedBox(height: 18.h),
            titleForTxtfield(title: 'Subtitle'),
            SizedBox(height: 4.h),
            Card(
              color: Colors.white,
              child: Padding(
                padding:  EdgeInsets.all(5.r),
                child: TextField(
                  style: TextStyle(color: Color(0xff2E435B),),
                  controller: txtSubtitle,
                  decoration: InputDecoration(
                    hintText: 'Subtitle here...',
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
            SizedBox(height: 18.h),
            titleForTxtfield(title: 'Date'),
            SizedBox(height: 4.h),

            // Date Picker Field
            Card(
              color: Colors.white,
              child: InkWell(
                onTap: () => _selectDate(context),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Image(image: AssetImage('asset/img/uis_calender.png'))
                    // suffixIcon: Icon(Icons.calendar_today, color: Color(0xff2E435B)),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(8.0.r),
                    child: Text(
                      _selectedDate == null
                          ? "Select Date"
                          : DateFormat('MMMM dd, yyyy').format(_selectedDate!),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xff2E435B),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Spacer(),
            Padding(
              padding:  EdgeInsets.only(bottom: 10.h, right: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(onTap: () {}, child: cancelButton()),
                  SizedBox(width: 20.w),
                  GestureDetector(onTap: () {}, child: doneButton()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text titleForTxtfield({required String title}) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: Color(0xff2E435B),
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
