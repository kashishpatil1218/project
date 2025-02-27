import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Align labelsForTextField({required String label}) {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Color(0xff2E435B),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}

Widget buildTextField( String hint, String s, {int maxLines = 1}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: TextField(
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          maxLines: maxLines,
          decoration: InputDecoration(

            hintText: hint,

            border: InputBorder.none,
          ),
        ),
      ),
    ),
  );
}