import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff2E435B),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ),
        title: Text(
          "Edit",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xff2E435B),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            //TODO Profile Picture
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://via.placeholder.com/100"),
            ),
            const SizedBox(height: 20),

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
                const SizedBox(width: 10),
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

            const SizedBox(height: 20),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff2E435B)),
                      ),
                      child: Center(
                        child: Text(
                          "Cancle",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff2E435B),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Color(0xff2E435B),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Done",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // buildButton("Cancel", Colors.grey, () {}),
                // SizedBox(width: 10,),
                // buildButton("Done", Colors.blue, () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Align labelsForTextField({required String label}) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xff2E435B),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, String hint, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: TextField(
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            maxLines: maxLines,
            decoration: InputDecoration(
              labelText: label,
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
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
        padding: const EdgeInsets.only(left: 8),
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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
