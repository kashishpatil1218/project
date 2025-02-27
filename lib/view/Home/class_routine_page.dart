import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/view/component/cancle_done_button.dart';


class ClassRoutineScreen extends StatefulWidget {
  const ClassRoutineScreen({super.key});

  @override
  State<ClassRoutineScreen> createState() => _ClassRoutineScreenState();
}
// List<bool> isSelected = [true, false];


class _ClassRoutineScreenState extends State<ClassRoutineScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: DataTable(
            columnSpacing: 15.0,
            headingRowColor: MaterialStateColor.resolveWith(
              (states) => Colors.white!,
            ),
            columns: const [
              DataColumn(
                label: Text(
                  "TIME",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  "TEACHER",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  "MONDAY",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              DataColumn(
                label: Text(
                  "TUESDAY",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
            rows: [
              buildRow("07:00 - 08:00", "Afra Salem", "Maths", "Science"),
              buildRow(
                "08:00 - 09:00",
                "Fatima Al Jaber",
                "Geography",
                "Geography",
              ),
              buildRow("09:00 - 10:00", "Share Khalidi", "History", "Hindi"),
              buildRow("10:00 - 11:00", "Elisa Freiha", "Hindi", "Gujarati"),
              buildRow("11:00 - 12:00", "Salem Musa", "Science", "LAB"),
              buildRow("12:00 - 13:00", "Ali Sorour", "Gujarati", "History"),
              buildRow("13:00 - 14:00", "Sarah Salmin", "LAB", "Maths"),
            ],
          ),
        ),
      ),

      //TODO color chage karvano baki che am pm no----------------------------------------------------------------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Add New Period',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color(0xff2E435B),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter subject',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter teacher name',
                            border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child:Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5),
                                  child: Text("7:00"),
                                ),)
                          ),
                        ),
                        SizedBox(width: 10),
                        Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text("To"),
                            )
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5),
                                child: Text("8:00"),
                              ),
                            )
                          ),
                        ),
                        SizedBox(width: 10),
                        ToggleButtons(

                         constraints: BoxConstraints(minHeight: 35,minWidth: 35),
                          borderRadius: BorderRadius.circular(12),
                          isSelected: [true,false],



                          children: [Text('AM'), Text('PM')],
                          onPressed: (int index) {

                          }

                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                height: 40,
                                image: AssetImage('asset/img/uis_calender.png'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: () {},
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                height: 40,
                                image: AssetImage('asset/img/catppuccin_pdf.png'),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10,right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          cancelButton(),
                          SizedBox(width: 20,),
                          doneButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        backgroundColor: Color(0xff2E435B),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  DataRow buildRow(String time, String teacher, String monday, String tuesday) {
    return DataRow(
      cells: [
        DataCell(Text(time)),
        DataCell(Text(teacher)),
        DataCell(Text(monday)),
        DataCell(Text(tuesday)),
      ],
    );
  }
}



