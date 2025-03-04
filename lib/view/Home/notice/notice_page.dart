
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:project_1/view/component/cancle_done_button.dart';

class CreateNoticeScreen extends StatefulWidget {
  @override
  _CreateNoticeScreenState createState() => _CreateNoticeScreenState();
}

class _CreateNoticeScreenState extends State<CreateNoticeScreen> {
  TextEditingController txtTitle = TextEditingController();
  TextEditingController txtSubtitle = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            colorScheme: ColorScheme.light(
              primary: Colors.green,
              // Header background color
              onPrimary: Colors.white, // Header text color
              onSurface: Colors.black, // Normal text color
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Color(0xff2E435B), // Button color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

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
          'Create A Notice',
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
            SizedBox(height: 20),
            titleForTxtfield(title: 'Title'),
            SizedBox(height: 5),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  style: TextStyle(color: Color(0xff2E435B),),
                  controller: txtTitle,
                  decoration: InputDecoration(
                    hintText: 'Title here...',
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
            titleForTxtfield(title: 'Subtitle'),
            SizedBox(height: 5),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  style: TextStyle(color: Color(0xff2E435B),),
                  controller: txtSubtitle,
                  decoration: InputDecoration(
                    hintText: 'Subtitle here...',
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
            titleForTxtfield(title: 'Date'),
            SizedBox(height: 5),

            // Date Picker Field
            Card(
              color: Colors.white,
              child: InkWell(
                onTap: () => _selectDate(context),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Image(image: AssetImage('asset/img/uis_calender.png'))
                    // suffixIcon: Icon(Icons.calendar_today, color: Color(0xff2E435B)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _selectedDate == null
                          ? "Select Date"
                          : DateFormat('MMMM dd, yyyy').format(_selectedDate!),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xff2E435B),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(onTap: () {}, child: cancelButton()),
                  SizedBox(width: 20),
                  GestureDetector(onTap: () {}, child: doneButton()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text titleForTxtfield({required String title}) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: Color(0xff2E435B),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
