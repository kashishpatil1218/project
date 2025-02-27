import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassScreen extends StatelessWidget {
  const ClassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff2E435B),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        title: Text(
          'Class Routine',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              buildCategoryTile("Pre-Primary"),
              buildCategoryTile("Primary"),
              buildCategoryTile("Secondary"),
              ExpansionTile(
                title: Text(
                  "Higher Secondary",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2E435B),
                    ),
                  ),
                ),
                children: [
                  buildSubjectTile("Stander", "11th commerce"),
                  buildSubjectTile("Stander", "12th commerce"),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryTile(String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 1),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff2E435B),
            ),
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Color(0xff2E435B),
        ),
        onTap: () {},
      ),
    );
  }

  Widget buildSubjectTile(String subject, String code) {
    return ListTile(
      title: Text(
        subject,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff2E435B),
          ),
        ),
      ),
      trailing: Text(
        code,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xffB1B1B1),
          ),),
      ),
      onTap: () {},
    );
  }
}
