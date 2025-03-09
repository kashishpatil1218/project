import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Privacy & Security',
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              "Contrary to popular belief, Lorem Ipsum is not \nsimply random text. It has roots in a piece of\n classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a \nLatin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem ",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13.sp),
              ),
            ),
            SizedBox(height: 10.h,),
            _buildSectionTitle('1. Data Collection'),
            _buildBulletPoint(
              'We collect user data for account creation and app functionality.',
            ),
            _buildBulletPoint(
              'Types of data: Name, Email, Usage data, Device Information.',
            ),
            _buildBulletPoint(
              'Data is collected securely and used for improvement.',
            ),
            SizedBox(height: 8.h),
            _buildSectionTitle('2. Data Usage'),
            _buildBulletPoint('Used for improving user experience.'),
            _buildBulletPoint('Enhancing security measures.'),
            _buildBulletPoint('Personalized content and support.'),
            SizedBox(height: 8.h),
            _buildSectionTitle('3. Data Sharing'),
            _buildBulletPoint('We do not sell personal data.'),
            _buildBulletPoint(
              'Data may be shared with trusted third parties for essential services.',
            ),
            SizedBox(height: 8.h),
            _buildSectionTitle('4. Data Retention'),
            _buildBulletPoint('Stored securely with encryption.'),
            _buildBulletPoint('Data retention policies are in place.'),
            SizedBox(height: 8.h),
            _buildSectionTitle('5. Security Measures'),
            _buildBulletPoint('Regular security audits.'),
            _buildBulletPoint('User authentication for access control.'),
            _buildBulletPoint('Data encryption at rest and in transit.'),
            SizedBox(height: 8.h),
            _buildSectionTitle('6. Account Security'),
            _buildBulletPoint(
              'Enable two-factor authentication for added security.',
            ),
            _buildBulletPoint('Regularly update your password.'),
            SizedBox(height: 8.h),
            _buildSectionTitle('7. Permissions Transparency'),
            _buildBulletPoint('Explanation of permissions requested.'),
            _buildBulletPoint('Users can manage permissions in app settings.'),
            SizedBox(height: 8.h),
            _buildSectionTitle('8. Your Rights'),
            _buildBulletPoint(
              'Request access, correction, or deletion of data.',
            ),
            _buildBulletPoint('Opt-out of data collection where applicable.'),
            SizedBox(height: 8.h),
            _buildSectionTitle('9. Contact Information'),
            _buildBulletPoint('For queries, contact support@example.com.'),
            SizedBox(height: 8.h),
            _buildSectionTitle('10. Footer Note'),
            _buildBulletPoint('Policy updates will be communicated to users.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Text(
        title,
        style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18.sp),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, bottom: 2.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(
            overflow: TextOverflow.ellipsis,
            text,style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400),)),
        ],
      ),
    );
  }
}
