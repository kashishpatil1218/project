import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/view/component/cancle_done_button.dart';

class MessageSendPage extends StatefulWidget {
  @override
  _MessageSendPageState createState() => _MessageSendPageState();
}

class _MessageSendPageState extends State<MessageSendPage> {
  List<Map<String, dynamic>> teachers = [
    {'name': 'Ashley', 'image': 'assets/teacher1.png', 'selected': false},
    {'name': 'Sarah Salmin', 'image': 'assets/teacher2.png', 'selected': false},
    {'name': 'Afra Salem', 'image': 'assets/teacher3.png', 'selected': false},
    {
      'name': 'Mohammed bin Shafi',
      'image': 'assets/teacher4.png',
      'selected': false,
    },
    {
      'name': 'Mubarak Al-Amri',
      'image': 'assets/teacher5.png',
      'selected': false,
    },
    {'name': 'Mouza behind', 'image': 'assets/teacher6.png', 'selected': false},
    {'name': 'Mouza behind', 'image': 'assets/teacher6.png', 'selected': false},
    {'name': 'Mouza behind', 'image': 'assets/teacher6.png', 'selected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Send message to',
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
        actions: [
          Padding(
            padding:  EdgeInsets.all(8.0.r),
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                color: Color(0xff2E435B),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('asset/img/search_MAIN.png'),
                ),
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding:  EdgeInsets.only(top: 15.h),
        child: Column(children: [Expanded(child: buildTeachersList())]),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
        backgroundColor: Color(0xff2E435B),
        onPressed: () {},
        child: Image.asset('asset/img/MESS.png'),
      ),
    );
  }

  Widget buildTeachersList() {
    return ListView.builder(
      itemCount: teachers.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 4.r, spreadRadius: 1.r),
            ],
          ),
          child: Row(
            children: [
              Container(
                height: 55.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      teachers[index]['name'],
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xff45586A),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "Roll No : 08",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xffACA9A9),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Transform.scale(
                  scale: 1.2.h, // Increase the size by 1.5x
                  child: CupertinoCheckbox(
                    activeColor: Color(0xff2E435B),

                    focusColor: Color(0xff2E435B),
                    side: BorderSide(color: Color(0xff2E435B), width: 1.w),
                    value: teachers[index]['selected'],
                    onChanged: (bool? value) {
                      setState(() {
                        teachers[index]['selected'] = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
