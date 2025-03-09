import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Card(
          child: Row(
            children: [
              Image.asset(
                'asset/img/arrow_CHAT_PAGE.png',
                height: 42.h,
                width: 42.w,
              ),
              const CircleAvatar(
                // TODO Replace your profile here
                backgroundImage: NetworkImage("https://via.placeholder.com/50"),
              ),
               SizedBox(width: 10.w),
              Text(
                "Hamda Said",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(width: 70.w),
              Image.asset('asset/img/CHAT_VIDEO_CALL.png'),
              SizedBox(width: 20.w),
              Image.asset('asset/img/CHAT_CALL.png'),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(child: SizedBox()),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey.shade300)),
            ),
            child: Row(
              children: [
                Image.asset('asset/img/Link.png'),
                Expanded(
                  child: Container(
                    padding:  EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child:  TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.copy, color: Colors.grey),
                        hintText: "Write your message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                Image.asset('asset/img/CHAT_CAMERA.png'),
                SizedBox(width: 20.w),
                Padding(
                  padding:  EdgeInsets.all(8.0.r),
                  child: Image.asset('asset/img/CHAT_MIC.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
