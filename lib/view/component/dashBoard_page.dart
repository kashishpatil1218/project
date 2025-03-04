// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class DashboardCard extends StatelessWidget {
//   final String title;
//   final String value;
//   final IconData icon;
//
//   DashboardCard({required this.title, required this.value, required this.icon});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.r),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 16.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black54,
//                   ),
//                 ),
//                 SizedBox(height: 5.h),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//             CircleAvatar(
//               backgroundColor: Colors.blueAccent.withOpacity(0.1),
//               radius: 20.r,
//               child: Icon(icon, color: Colors.blueAccent, size: 24.sp),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
