import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//DROPDOWN WIDGET
Widget dropdownButton(
  String selectedValue,
  List<String> items,
  ValueChanged<String?> onChanged,
) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: selectedValue,
        icon: Icon(Icons.arrow_drop_down),
        onChanged: onChanged,
        items:
            items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2E435B),
                  ),
                ),
              );
            }).toList(),
      ),
    ),
  );
}

// Student Card
Widget studentCard(Map<String, String> student) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 1,
    margin: EdgeInsets.symmetric(vertical: 8),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(student["image"]!),
            ),
          ),
        ),
        title: Text(
          student["name"]!,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff2E435B),
          ),
        ),
        subtitle: Text(
          "Roll No : ${student["roll"]}",
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: Color(0xffACA9A9),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}

final List<Map<String, String>> students = [
  {
    "name": "Ashley",
    "roll": "08",
    "image": "https://randomuser.me/api/portraits/men/1.jpg",
  },
  {
    "name": "Afra Salem",
    "roll": "08",
    "image": "https://randomuser.me/api/portraits/women/2.jpg",
  },
  {
    "name": "Mohammed bin Shafi",
    "roll": "08",
    "image": "https://randomuser.me/api/portraits/women/3.jpg",
  },
  {
    "name": "Mubarak Al-Amri",
    "roll": "08",
    "image": "https://randomuser.me/api/portraits/women/4.jpg",
  },
  {
    "name": "Mouza behind",
    "roll": "08",
    "image": "https://randomuser.me/api/portraits/women/5.jpg",
  },
];
