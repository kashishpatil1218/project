import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/view/component/cancle_done_button.dart';

class NoticesBoardScreen extends StatelessWidget {
  final List<Map<String, String>> notices = [
    {
      "no": "01",
      "title": "Test exam",
      "desc": "Test examination held in 3 month",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "02",
      "title": "Annual sports",
      "desc": "Annual Sports happening on 17 April",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "03",
      "title": "Picnic",
      "desc": "Our school picnic on a walking picnic",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "04",
      "title": "Foundation day",
      "desc": "Our school celebrates its foundation day",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "05",
      "title": "SparkFest",
      "desc": "Celebrating happiness together",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "06",
      "title": "ChromaNight",
      "desc": "Shining with bright lights",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "07",
      "title": "EchoLive",
      "desc": "Good Songs, Endless Stories",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "08",
      "title": "Radiance",
      "desc": "Shine every moment",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "09",
      "title": "Momentum",
      "desc": "Unite for the same experience",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "10",
      "title": "Summit Fest",
      "desc": "Unlock the Peak of Celebration",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "11",
      "title": "Lumeo",
      "desc": "Our school celebrates its foundation day",
      "image": "https://via.placeholder.com/50",
    },
    {
      "no": "12",
      "title": "Zenith Nights",
      "desc": "Celebrating life, One Step at a Time",
      "image": "https://via.placeholder.com/50",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notice Board",
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
        padding:  EdgeInsets.all(16.0.r),
        child: Column(
          children: [
            // Header Row
            Padding(
              padding:  EdgeInsets.all(8.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("NO", style: headerStyle()),
                  SizedBox(width: 32.w),
                  Text("ABOUT", style: headerStyle()),
                ],
              ),
            ),
            Divider(thickness: 1.w),

            // Notices List
            Expanded(
              child: ListView.builder(
                itemCount: notices.length,
                itemBuilder: (context, index) {
                  return noticeItem(notices[index]);
                },
              ),
            ),

            // Bottom Buttons
            Padding(
              padding:  EdgeInsets.only(bottom:10.h),
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

  // Header Style
  TextStyle headerStyle() {
    return GoogleFonts.poppins(
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff2E435B),
    );
  }

  // Notice Item Widget
  Widget noticeItem(Map<String, String> notice) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.all(10.r),
            child: Text(
              notice["no"]!,
              style: GoogleFonts.poppins(
                fontSize: 14.sp,
                color: Color(0xff2E435B),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(width: 15.w),
          Container(
            height: 30.h,
            width: 32.w,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(5.r),
              image: DecorationImage(image: NetworkImage(notice["image"]!)),
            ),
          ),

          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                overflow: TextOverflow.ellipsis,
                notice["title"]!,
                style: GoogleFonts.poppins(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff2E435B),
                ),
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                notice["desc"]!,
                style: GoogleFonts.poppins(
                  fontSize: 10.sp,
                  color: Color(0xff2E435B),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


}
