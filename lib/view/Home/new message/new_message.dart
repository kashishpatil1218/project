import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/title_build_textfield.dart';
import 'component/IconBtton.dart';

class NewMessageScreen extends StatelessWidget {
  NewMessageScreen({super.key});

  final List<Map<String, dynamic>> options = [
    {
      "icon": Icons.insert_drive_file,
      "text": "Document",
      "color": Colors.purple,
    },
    {"icon": Icons.camera_alt, "text": "Camera", "color": Colors.pink},
    {"icon": Icons.photo, "text": "Gallery", "color": Colors.blue},
    {"icon": Icons.person, "text": "Contact", "color": Colors.lightBlue},
    {"icon": Icons.poll, "text": "Poll", "color": Colors.orange},
    {"icon": Icons.event, "text": "Event", "color": Colors.green},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Message",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff2E435B),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextField("To", "Enter the name"),
            SizedBox(height: 10),
            buildTextField("Subject", "Enter subject"),
            SizedBox(height: 10),
            buildTextField("Message", "Enter message", maxLines: 4),
            SizedBox(height: 15),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder:
                          (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Container(
                                width: 150,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: List.generate(
                                    options.length,
                                    (index) => ListTile(
                                      leading: Icon(
                                        options[index]['icon'],
                                        color: options[index]['color'],
                                      ),
                                      title: Text(
                                        options[index]['text'],
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                    );
                  },
                  child: iconButton('asset/img/Link.png', Colors.blue),
                ),
                SizedBox(width: 10),
                iconButton('asset/img/DELETE.png', Colors.red),
              ],
            ),
            Spacer(),
            SizedBox(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color(0xff2E435B),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Send',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
