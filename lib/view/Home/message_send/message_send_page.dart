import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/view/component/cancle_done_button.dart';

class MessageSendPage extends StatefulWidget {
  @override
  _MessageSendPageState createState() => _MessageSendPageState();
}

class _MessageSendPageState extends State<MessageSendPage> {
  List<Map<String, dynamic>> teachers = [
    {'name': 'Ashley', 'image': 'assets/teacher1.png', 'selected': false},
    {'name': 'Sarah Salmin', 'image': 'assets/teacher2.png', 'selected': false},
    {'name': 'Afra Salem', 'image': 'assets/teacher3.png', 'selected': false},
    {
      'name': 'Mohammed bin Shafi',
      'image': 'assets/teacher4.png',
      'selected': false,
    },
    {
      'name': 'Mubarak Al-Amri',
      'image': 'assets/teacher5.png',
      'selected': false,
    },
    {'name': 'Mouza behind', 'image': 'assets/teacher6.png', 'selected': false},
    {'name': 'Mouza behind', 'image': 'assets/teacher6.png', 'selected': false},
    {'name': 'Mouza behind', 'image': 'assets/teacher6.png', 'selected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Send message to',
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
            child: Image.asset('asset/img/MAIN.png'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Color(0xff2E435B),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('asset/img/search_MAIN.png'),
                ),
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(children: [Expanded(child: buildTeachersList())]),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Color(0xff2E435B),
        onPressed: () {},
        child: Image.asset('asset/img/MESS.png'),
      ),
    );
  }

  Widget buildTeachersList() {
    return ListView.builder(
      itemCount: teachers.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 1),
            ],
          ),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      teachers[index]['name'],
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: Color(0xff45586A),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Roll No : 08",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: Color(0xffACA9A9),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Transform.scale(
                  scale: 1.5, // Increase the size by 1.5x
                  child: CupertinoCheckbox(
                    activeColor: Color(0xff2E435B),

                    focusColor: Color(0xff2E435B),
                    side: BorderSide(color: Color(0xff2E435B), width: 1),
                    value: teachers[index]['selected'],
                    onChanged: (bool? value) {
                      setState(() {
                        teachers[index]['selected'] = value!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
