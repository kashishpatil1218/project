import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/cancle_done_button.dart';

class EmployeeEditPage extends StatefulWidget {
  @override
  _EmployeeEditPageState createState() => _EmployeeEditPageState();
}

class _EmployeeEditPageState extends State<EmployeeEditPage> {
  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff2E435B),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white),
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
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/women/65.jpg',
                ),
              ),
              SizedBox(height: 20),
              buildTextField("Name", "Lily Al Yamahi"),
              buildTextField("Email", "xrobinson@aol.com"),
              buildTextField("Phone Number", "+966539293313"),
              buildTextField("Address", "53 Suwar Street, Thaqif"),

              SizedBox(height:110),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [cancelButton(), SizedBox(width: 20), doneButton()],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff2E435B),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Card(

            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextField(
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  hintText: value,
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}