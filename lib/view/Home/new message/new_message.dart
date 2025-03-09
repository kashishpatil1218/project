import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/title_build_textfield.dart';
import 'component/IconBtton.dart';
import 'component/dialogueBox.dart';

class NewMessageScreen extends StatelessWidget {
  NewMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Message",
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
        padding:  EdgeInsets.all(14.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextField("To", "Enter the name"),
            SizedBox(height: 10.h),
            buildTextField("Subject", "Enter subject"),
            SizedBox(height: 10.h),
            buildTextField("Message", "Enter message", maxLines: 4),
            SizedBox(height: 15.h),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder:
                          (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.r),
                              child: Container(
                                width: 150.w,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    linkDialogueBox(
                                      img: 'asset/img/D1.png',
                                      title: 'Document',
                                      context: context,
                                    ),
                                    linkDialogueBox(
                                      img: 'asset/img/B_1.png',
                                      title: 'Camera',
                                      context: context,
                                    ),
                                    linkDialogueBox(
                                      img: 'asset/img/G_1.png',
                                      title: 'Gallery',
                                      context: context,
                                    ),
                                    linkDialogueBox(
                                      img: 'asset/img/Co_1.png',
                                      title: 'Contact',
                                      context: context,
                                    ),
                                    linkDialogueBox(
                                      img: 'asset/img/P_1.png',
                                      title: 'Poll',
                                      context: context,
                                    ),
                                    linkDialogueBox(
                                      img: 'asset/img/A1.png',
                                      title: 'Event',
                                      context: context,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                    );
                  },
                  child: iconButton('asset/img/Link.png', Colors.blue),
                ),
                SizedBox(width: 10.w),
                iconButton('asset/img/DELETE.png', Colors.red),
              ],
            ),
            Spacer(),
            SizedBox(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 50.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                    color: Color(0xff2E435B),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      'Send',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
