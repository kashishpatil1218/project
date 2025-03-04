import 'package:flutter/material.dart';
import 'package:project_1/view/Home/home_page.dart';

import '../view/Home/attendance_page.dart';
import '../view/Home/chat_page.dart';
import '../view/Home/class_page.dart';
import '../view/Home/class_routine_page.dart';
import '../view/Home/contact_page.dart';
import '../view/Home/edite_page.dart';
import '../view/Home/employee_edite_page.dart';
import '../view/Home/employee_page.dart';
import '../view/Home/heple_support_page.dart';
import '../view/Home/message_send/message_send_page.dart';
import '../view/Home/new message/new_message.dart';
import '../view/Home/notice_board.dart';
import '../view/Home/notice_page.dart';
import '../view/Home/privicy_policy_page.dart';
import '../view/Home/profile_page.dart';
import '../view/Home/student_attendance.dart';
import '../view/Home/student_edit_page.dart';
import '../view/Home/subject_board.dart';
import '../view/Home/subject_page.dart';
import '../view/Home/teacher_attendance.dart';
import '../view/Home/teachers_page.dart';



Map<String, Widget Function(BuildContext)> routes = {
  // '/': (context) => DashBoardScreen(), //1
  // '/': (context) => TeacherListScreen(),//TODO page 2---- teacher
  // '/': (context) => ChatScreen(),//TODO page 3 chat page
  // '/': (context) => EditProfileScreen(),//TODO page 4----- teacher edite page
  // '/': (context) => StudentEditPage(),//TODO page 4 student edite page
  // '/': (context) => EmployeeEditPage(),//TODO page 5 employee edite page
  // '/': (context) => EmployeePage(),//TODO page 6 employee  page
  // '/': (context) => ProfileScreen(),//TODO page 7 profile  page
  // '/': (context) => PrivacyPolicyScreen(),//TODO page 8 privicy Policy   page
  // '/': (context) => HelpSupportScreen(),//TODO page 9 heple support   page
  // '/': (context) => CreateNoticeScreen(),//TODO page 10  notice    page
  // '/': (context) => TeachersListScreen(),//TODO page 11 teachers    page
  // '/': (context) => NoticesBoardScreen(),//TODO page 12 notice board    page..................................baki
  //  '/': (context) => AddSubjectScreen(),//TODO page 13 subject
  //  '/': (context) => SubjectScreen(),//TODO page 14 subject board
  //  '/': (context) => ClassScreen(),//TODO page 14 calss
  //  '/': (context) => ClassRoutineScreen(),//TODO page 14 calss routine page    main corse bakiiiii
  //  '/': (context) => AttendancePage(),//TODO page 15  attendance
  //  '/': (context) => AttendanceScreen(),//TODO page 16  attendance teacher
  //  '/': (context) => AttendanceStudent(),//TODO page 17  attendance Student
  //  '/': (context) => NewMessageScreen(),//TODO page 18  new message
   '/': (context) => MessageSendPage(),//TODO page 19   message send


};
