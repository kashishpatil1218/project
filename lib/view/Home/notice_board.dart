// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: NoticesBoardScreen(),
// //     );
// //   }
// // }
// //
// // class NoticesBoardScreen extends StatelessWidget {
// //   final List<Map<String, String>> notices = [
// //     {'title': 'Test exam', 'subtitle': 'Test examination held on 3 March', 'image': 'assets/test_exam.png'},
// //     {'title': 'Annual sports', 'subtitle': 'Annual sports arranged on 13 April', 'image': 'assets/annual_sports.png'},
// //     {'title': 'Picnic', 'subtitle': 'Students organize an exciting picnic', 'image': 'assets/picnic.png'},
// //     {'title': 'Foundation day', 'subtitle': 'Our school celebrates its foundation day', 'image': 'assets/foundation_day.png'},
// //     {'title': 'SparkFest', 'subtitle': 'Creating Memories Together', 'image': 'assets/sparkfest.png'},
// //     {'title': 'ChromaNight', 'subtitle': 'Unleashing Fun and Friendship', 'image': 'assets/chromanight.png'},
// //     {'title': 'EchoLive', 'subtitle': 'One Stage, Endless Stories', 'image': 'assets/echolive.png'},
// //     {'title': 'Radiance', 'subtitle': 'Elevate Every Moment', 'image': 'assets/radiance.png'},
// //     {'title': 'Momentum', 'subtitle': 'Unite for the Ultimate Experience', 'image': 'assets/momentum.png'},
// //     {'title': 'Summit Fest', 'subtitle': 'Reach the Peak of Celebration', 'image': 'assets/summitfest.png'},
// //     {'title': 'Lumea', 'subtitle': 'Our school celebrates its foundation day', 'image': 'assets/lumea.png'},
// //     {'title': 'Zenith Nights', 'subtitle': 'Celebrate Life, One Step at a Time', 'image': 'assets/zenith_nights.png'},
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Container(
// //             decoration: BoxDecoration(
// //               shape: BoxShape.circle,
// //               color: Color(0xff2E435B),
// //             ),
// //             child: IconButton(
// //               icon: const Icon(
// //                 Icons.arrow_back_ios_outlined,
// //                 color: Colors.white,
// //                 size: 20,
// //               ),
// //               onPressed: () {},
// //             ),
// //           ),
// //         ),
// //         title: Text(
// //           "Notices Board",
// //           style: GoogleFonts.poppins(
// //             textStyle: TextStyle(
// //               color: Color(0xff2E435B),
// //               fontSize: 20,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //         ),
// //         centerTitle: true,
// //         backgroundColor: Colors.white,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(10.0),
// //         child: Column(
// //           children: [
// //             Expanded(
// //               child: ListView.builder(
// //                 itemCount: notices.length,
// //                 itemBuilder: (context, index) {
// //                   return ListTile(
// //                     leading: CircleAvatar(
// //                       backgroundImage: AssetImage(notices[index]['image']!),
// //                     ),
// //                     title: Text(notices[index]['title']!, style: TextStyle(fontWeight: FontWeight.bold)),
// //                     subtitle: Text(notices[index]['subtitle']!),
// //                     trailing: Text((index + 1).toString().padLeft(2, '0')),
// //                   );
// //                 },
// //               ),
// //             ),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 ElevatedButton(
// //                   onPressed: () {},
// //                   child: Text('Cancel'),
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: Colors.white,
// //                     foregroundColor: Colors.black,
// //                   ),
// //                 ),
// //                 ElevatedButton(
// //                   onPressed: () {},
// //                   child: Text('Done'),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: NoticesBoardScreen(),
//     );
//   }
// }
//
// class NoticesBoardScreen extends StatelessWidget {
//   final List<Map<String, String>> notices = [
//     {'title': 'Test exam', 'subtitle': 'Test examination held on 3 March', 'image': 'assets/test_exam.png'},
//     {'title': 'Annual sports', 'subtitle': 'Annual sports arranged on 13 April', 'image': 'assets/annual_sports.png'},
//     {'title': 'Picnic', 'subtitle': 'Students organize an exciting picnic', 'image': 'assets/picnic.png'},
//     {'title': 'Foundation day', 'subtitle': 'Our school celebrates its foundation day', 'image': 'assets/foundation_day.png'},
//     {'title': 'SparkFest', 'subtitle': 'Creating Memories Together', 'image': 'assets/sparkfest.png'},
//     {'title': 'ChromaNight', 'subtitle': 'Unleashing Fun and Friendship', 'image': 'assets/chromanight.png'},
//     {'title': 'EchoLive', 'subtitle': 'One Stage, Endless Stories', 'image': 'assets/echolive.png'},
//     {'title': 'Radiance', 'subtitle': 'Elevate Every Moment', 'image': 'assets/radiance.png'},
//     {'title': 'Momentum', 'subtitle': 'Unite for the Ultimate Experience', 'image': 'assets/momentum.png'},
//     {'title': 'Summit Fest', 'subtitle': 'Reach the Peak of Celebration', 'image': 'assets/summitfest.png'},
//     {'title': 'Lumea', 'subtitle': 'Our school celebrates its foundation day', 'image': 'assets/lumea.png'},
//     {'title': 'Zenith Nights', 'subtitle': 'Celebrate Life, One Step at a Time', 'image': 'assets/zenith_nights.png'},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Container(
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Color(0xff2E435B),
//             ),
//             child: IconButton(
//               icon: const Icon(
//                 Icons.arrow_back_ios_outlined,
//                 color: Colors.white,
//                 size: 20,
//               ),
//               onPressed: () {},
//             ),
//           ),
//         ),
//         title: Text(
//           "Notices Board",
//           style: GoogleFonts.poppins(
//             textStyle: TextStyle(
//               color: Color(0xff2E435B),
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//              Card(
//
//                child: Padding(
//                  padding: const EdgeInsets.all(10),
//                  child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         flex: 1,
//                         child: Text('NO', style: TextStyle(fontWeight: FontWeight.bold)),
//                       ),
//                       Expanded(
//                         flex: 4,
//                         child: Text('ABOUT', style: TextStyle(fontWeight: FontWeight.bold)),
//                       ),
//                     ],
//                   ),
//                ),
//              ),
//
//             Expanded(
//               child: Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ListView.separated(
//                     itemCount: notices.length,
//                     separatorBuilder: (context, index) => Divider(color: Colors.grey[300]),
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 8.0),
//                         child: Row(
//                           children: [
//                             Expanded(
//                               flex: 1,
//                               child: Text((index + 1).toString().padLeft(2, '0'),
//                                   style: TextStyle(fontWeight: FontWeight.bold)),
//                             ),
//                             Expanded(
//                               flex: 4,
//                               child: Row(
//                                 children: [
//                                   CircleAvatar(
//                                     backgroundImage: AssetImage(notices[index]['image']!),
//                                   ),
//                                   SizedBox(width: 10),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Text(notices[index]['title']!, style: TextStyle(fontWeight: FontWeight.bold)),
//                                       Text(notices[index]['subtitle']!, style: TextStyle(color: Colors.grey)),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }