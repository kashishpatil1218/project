import 'package:flutter/material.dart';
import 'package:project_1/view/Home/home_page.dart';

import '../view/Home/chat_page.dart';
import '../view/Home/contact_page.dart';
import '../view/Home/edite_page.dart';
import '../view/Home/employee_edite_page.dart';
import '../view/Home/employee_page.dart';
import '../view/Home/heple_support_page.dart';
import '../view/Home/privicy_policy_page.dart';
import '../view/Home/profile_page.dart';
import '../view/Home/student_edit_page.dart';



Map<String, Widget Function(BuildContext)> routes = {
  //'/': (context) => HomePage(), //
  // '/': (context) => TeacherListScreen(),//TODO page 2---- teacher
  // '/': (context) => ChatScreen(),//TODO page 3 chat page
  // '/': (context) => EditProfileScreen(),//TODO page 4----- teacher edite page
  // '/': (context) => StudentEditPage(),//TODO page 4 student edite page
  // '/': (context) => EmployeeEditPage(),//TODO page 5 employee edite page
  // '/': (context) => EmployeePage(),//TODO page 6 employee  page
  // '/': (context) => ProfileScreen(),//TODO page 7 profile  page
  // '/': (context) => PrivacyPolicyScreen(),//TODO page 8 privicy Policy   page
  '/': (context) => HelpSupportScreen(),//TODO page 9 heple support   page

};
