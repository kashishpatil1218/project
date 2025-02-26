//TODO page 2

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherListScreen extends StatelessWidget {
  const TeacherListScreen({super.key});

  final List<Map<String, String>> teachers = const [
    {"name": "Aisha Abd", "image": "https://via.placeholder.com/50"},
    {"name": "Taif Al-Amri", "image": "https://via.placeholder.com/50"},
    {"name": "Mona Al Gurg", "image": "https://via.placeholder.com/50"},
    {"name": "happy hope", "image": "https://via.placeholder.com/50"},
    {"name": "Aisha Abd", "image": "https://via.placeholder.com/50"},
    {"name": "Elisa Freiha", "image": "https://via.placeholder.com/50"},
    {"name": "horses", "image": "https://via.placeholder.com/50"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Teacher',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 20,
              color: Color(0xff2E435B),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff2E435B),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff2E435B),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.edit_calendar_sharp,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: teachers.length,
          itemBuilder: (context, index) {
            final teacher = teachers[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                title: Text(
                  teacher["name"]!,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xff2E435B),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                subtitle: Text(
                  "Teacher",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xff2E435B),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xff2E435B),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.messenger_outline,
                          color: Colors.white,
                          size: 15,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xff2E435B),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.add_ic_call_rounded,
                          color: Colors.white,
                          size: 15,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:() {
        Navigator.of(context).pushNamed('/chat');
      },),
    );
  }
}
