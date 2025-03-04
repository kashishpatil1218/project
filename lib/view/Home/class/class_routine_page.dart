import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassRoutineScreen extends StatelessWidget {
  final List<Map<String, String>> routine = [
    {"time": "07:00 - 08:00", "teacher": "Afra Salem", "monday": "Maths", "tuesday": "Science"},
    {"time": "08:00 - 09:00", "teacher": "Fatima Al Jaber", "monday": "Geography", "tuesday": "Geography"},
    {"time": "09:00 - 10:00", "teacher": "Share Khalidi", "monday": "History", "tuesday": "Hindi"},
    {"time": "10:00 - 11:00", "teacher": "Elisa Freiha", "monday": "Hindi", "tuesday": "Gujarati"},
    {"time": "11:00 - 12:00", "teacher": "Salem Musa", "monday": "Science", "tuesday": "LAB"},
    {"time": "12:00 - 13:00", "teacher": "Ali Sorour", "monday": "Gujarati", "tuesday": "History"},
    {"time": "13:00 - 14:00", "teacher": "Sarah Salmin", "monday": "LAB", "tuesday": "Maths"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Class Routine",
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
          children: [
            // Table Headers
            Table(
              border: TableBorder(
                bottom: BorderSide(width:1, color: Colors.grey.shade400),
              ),
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
                3: FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  children: [
                    headerCell("TIME"),
                    headerCell("TEACHER"),
                    headerCell("MONDAY"),
                    headerCell("TUESDAY"),
                  ],
                ),
              ],
            ),

            // Class Routine Rows
            Expanded(
              child: ListView.builder(
                itemCount: routine.length,
                itemBuilder: (context, index) {
                  return Table(
                    border: TableBorder(
                      bottom: BorderSide(width: 0.5, color: Colors.grey.shade300),
                    ),
                    columnWidths: const {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(2),
                      2: FlexColumnWidth(2),
                      3: FlexColumnWidth(2),
                    },
                    children: [
                      TableRow(
                        children: [
                          tableCell(routine[index]["time"]!),
                          tableCell(routine[index]["teacher"]!),
                          tableCell(routine[index]["monday"]!),
                          tableCell(routine[index]["tuesday"]!),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff2E435B),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  // Header Cell Widget
  Widget headerCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10),
      child: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500,color:Color(0xff2E435B) ),
        textAlign: TextAlign.center,
      ),
    );
  }

  // Table Cell Widget
  Widget tableCell(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff2E435B)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
