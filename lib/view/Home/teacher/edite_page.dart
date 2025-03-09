import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/view/component/cancle_done_button.dart';

import '../../component/title_build_textfield.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String? selectedClass;
  String? selectedDepartment;
  final List<String> classes = ["1", "2", "3"];
  final List<String> departments = ["Division A", "Division B"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Edit",
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
      body: SingleChildScrollView(
        padding:  EdgeInsets.all(10.r),
        child: Column(
          children: [
            //TODO Profile Picture
             CircleAvatar(
              radius: 45.r,
              backgroundImage: NetworkImage("https://via.placeholder.com/100"),
            ),
             SizedBox(height: 18.h),

            //TODO Text Fields
            labelsForTextField(label: 'Name'),
            buildTextField("Name", "Lily Al Yamahi"),
            labelsForTextField(label: 'Email'),
            buildTextField("Email", "ybrown@xcloud.com"),
            labelsForTextField(label: 'Phone Number'),
            buildTextField("Phone Number", "+966539283313"),
            labelsForTextField(label: 'Address'),
            buildTextField("Address", "53 Suwar Street, Thaqif"),

            //TODO Class & Department Dropdowns
            Row(
              children: [
                Expanded(
                  child: buildDropdown("Class", selectedClass, classes, (
                    value,
                  ) {
                    setState(() {
                      selectedClass = value;
                    });
                  }),
                ),
                 SizedBox(width: 10.w),
                Expanded(
                  child: buildDropdown(
                    "Department",
                    selectedDepartment,
                    departments,
                    (value) {
                      setState(() {
                        selectedDepartment = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            labelsForTextField(label: 'Medium'),
            buildTextField("Medium", "Gujarati medium"),
            labelsForTextField(label: 'Subject'),
            buildTextField("Subject", "Maths"),
            labelsForTextField(label: 'Designation'),
            buildTextField("Designation", "Teacher"),
            labelsForTextField(label: 'Experience'),
            buildTextField("Experience", "2 Year"),
            labelsForTextField(label: 'About'),
            buildTextField("About", "Enter and text your details", maxLines: 3),

             SizedBox(height: 20.h),

            // Buttons
            Padding(
              padding:  EdgeInsets.only(bottom: 18.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  cancelButton(),
                  SizedBox(width: 15.w,),
                  doneButton(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDropdown(
    String label,
    String? selectedValue,
    List<String> items,
    ValueChanged<String?> onChanged,
  ) {
    return Card(
      child: Padding(
        padding:  EdgeInsets.only(left: 8.w,top: 5.h),
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: label,
            border: InputBorder.none,
          ),
          value: selectedValue,
          onChanged: onChanged,
          items:
              items.map((String item) {
                return DropdownMenuItem<String>(value: item, child: Text(item));
              }).toList(),
        ),
      ),
    );
  }

  Widget buildButton(String text, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding:  EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style:  TextStyle(color: Colors.white, fontSize: 16.sp),
      ),
    );
  }
}
