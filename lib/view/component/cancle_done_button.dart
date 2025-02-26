

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget cancelButton() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 50,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xff2E435B)),
      ),
      child: Center(
        child: Text(
          "Cancle",
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
  );
}



Widget doneButton() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 50,
      width: 110,
      decoration: BoxDecoration(
        color: Color(0xff2E435B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "Done",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ),
  );
}