import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/view/component/cancle_done_button.dart';
import 'package:project_1/view/component/title_build_textfield.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddSubjectScreen(),
    );
  }
}

class AddSubjectScreen extends StatelessWidget {
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
            child: Image.asset('asset/img/MAIN.png'),
          ),
        ),
        title: Text(
          'Add Subject',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            labeForSubject(lable: "Subject Name"),
            SizedBox(height: 5),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Subject Name',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffB1B1B1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            labelsForTextField(label: "Subject Code"),
            SizedBox(height: 5),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Subject Code',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffB1B1B1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    labeForSubject(lable: "Category"),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 40,
                            image: AssetImage('asset/img/Vector.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    labeForSubject(lable: "Category"),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            height: 40,
                            image: AssetImage('asset/img/mdi_hours-12.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [cancelButton(), SizedBox(width: 20), doneButton()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text labeForSubject({required String lable}) => Text(
    lable,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
        color: Color(0xff2E435B),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
