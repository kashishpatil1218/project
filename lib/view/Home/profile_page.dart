import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          'Profile',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              color: Color(0xff2E435B),
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 45.r,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            SizedBox(height: 18.h),
            Text(
              'Lily Al Yamahi',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              'ybrown@icloud.com',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xffB1B1B1),
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _infoCard(
                  img: 'asset/img/material-symbols_subject-rounded.png',
                  title: 'Math',
                  subtitle: 'Subject',
                ),
                _infoCard(
                  img: 'asset/img/customer-review 1.png',
                  title: '2 year',
                  subtitle: 'Experience',
                ),
                _infoCard(
                  img: 'asset/img/suitcase 1.png',
                  title: 'Teacher',
                  subtitle: 'Designation',
                ),
              ],
            ),
            SizedBox(height: 28.h),
            _sectionTitle('About'),
            Text(
              overflow: TextOverflow.ellipsis,
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),
              ),
            ),
            SizedBox(height: 10.h),
            _sectionTitle('Contact us'),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:  EdgeInsets.only(top: 5.h),
                child: Text(
                  '+966539293313',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Color(0xff070707),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            _sectionTitle('Address'),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:  EdgeInsets.only(top: 5.h),
                child: Text(
                  '53 suwar street, thaqif',
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Color(0xff070707),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoCard({
    required String img,
    required String title,
    required String subtitle,
  }) {
    return Column(
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.r),
            child: Image(image: AssetImage(img)),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff070707),
            ),
          ),
        ),
        Text(
          subtitle,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xffB1B1B1),
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _sectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff2E435B),
          ),
        ),
      ),
    );
  }
}
