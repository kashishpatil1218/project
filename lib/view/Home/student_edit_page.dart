import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/cancle_done_button.dart';

class StudentEditPage extends StatefulWidget {
  @override
  _StudentEditPageState createState() => _StudentEditPageState();
}

class _StudentEditPageState extends State<StudentEditPage> {
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
              buildTextField("Phone Number", "+966539293313"),
              buildTextField("Email", "xrobinson@aol.com"),
              buildTextField("Address", "53 Suwar Street, Thaqif"),
              Row(
                children: [
                  Expanded(child: buildTextField("Roll No", "250")),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gender",
                          style: GoogleFonts.poppins(
                            color: Color(0xff2E435B),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            genderButton("Male"),
                            SizedBox(width: 10),
                            genderButton("Female"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
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

  Widget genderButton(String gender) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              selectedGender = gender;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                selectedGender == gender ? Color(0xff2E435B) : Colors.white,
            foregroundColor:
                selectedGender == gender ? Colors.white : Colors.black,
            side: BorderSide(color: Colors.white),
            fixedSize: Size(150, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            gender,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }


}
