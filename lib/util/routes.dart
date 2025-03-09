import 'package:flutter/material.dart';
import 'package:project_1/view/Home/dashBoard/home_page.dart';

import '../view/Home/attendance/attendance_page.dart';
import '../view/Home/chat/chat_page.dart';
import '../view/Home/class/class_page.dart';
import '../view/Home/class/class_routine_page.dart';
import '../view/Home/teacher/teacherList_screen.dart';
import '../view/Home/earnings/earning.dart';
import '../view/Home/teacher/edite_page.dart';
import '../view/Home/employee/employee_edite_page.dart';
import '../view/Home/employee/employee_page.dart';
import '../view/Home/privacy_policy/heple_support_page.dart';
import '../view/Home/medium_fees/fees.dart';
import '../view/Home/medium_fees/medium_fees_page.dart';
import '../view/Home/message_send/message_send_page.dart';
import '../view/Home/new message/new_message.dart';
import '../view/Home/notice/notice_board.dart';
import '../view/Home/notice/notice_page.dart';
import '../view/Home/privacy_policy/privicy_policy_page.dart';
import '../view/Home/profile_page.dart';
import '../view/Home/student/student_attendance.dart';
import '../view/Home/student/student_edit_page.dart';
import '../view/Home/subject/subject_board.dart';
import '../view/Home/subject/subject_page.dart';
import '../view/Home/teacher/teacher_attendance.dart';
import '../view/Home/teacher/teachers_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => DashBoardScreen(), // 1   DASHBOARD
  '/TeacherListScreen': (context) => TeacherListScreen(), //   TEACHER
  '/ ChatScreen': (context) => ChatScreen(), // CHAT
  '/EditProfileScreen': (context) => EditProfileScreen(), //   TEACHER EDITE
  '/StudentEditPage': (context) => StudentEditPage(), //      STUDENT EDITE
  '/EmployeeEditPage': (context) => EmployeeEditPage(), //   EMPLOYEE EDITE
  '/ EmployeePage': (context) => EmployeePage(), //  EMPLOYEE
  '/  ProfileScreen': (context) => ProfileScreen(), // PROFILE
  '/PrivacyPolicyScreen': (context) => PrivacyPolicyScreen(), //    PRIVCY POLICY
  '/HelpSupportScreen': (context) => HelpSupportScreen(), //       HELP
  '/CreateNoticeScreen': (context) => CreateNoticeScreen(), //    NOTICE
  '/TeachersListScreen': (context) => TeachersListScreen(), //    TEACHER
  '/NoticesBoardScreen': (context) => NoticesBoardScreen(), //    NOTICE BOARD
  '/AddSubjectScreen': (context) => AddSubjectScreen(), //    SUBJECT
  '/SubjectScreen': (context) => SubjectScreen(), // SUBJECT BOARD
  '/ClassScreen': (context) => ClassScreen(), //   CLASS
  '/ClassRoutineScreen': (context) => ClassRoutineScreen(), // CLASS ROUTINE
  '/AttendancePage': (context) => AttendancePage(), //  ATTENDANCE
  '/AttendanceScreen': (context) => AttendanceScreen(), // TEACHER ATTENDANCE
  '/AttendanceStudent': (context) => AttendanceStudent(), // STUDENT ATTENDANCE
  '/NewMessageScreen': (context) => NewMessageScreen(), // NEW MESSAGE
  '/MessageSendPage': (context) => MessageSendPage(), // MESSAGE SEND
  '/MyEarningsScreen': (context) => MyEarningsScreen(), // EARNING
  '/MediumFeesPage': (context) => MediumFeesPage(),//  MEDIUM
  '/FeesScreen': (context) => FeesScreen(), // FEES
};
