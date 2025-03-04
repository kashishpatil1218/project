import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildTextField(String label, String hint, {int maxLines = 1}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff2E435B),
          ),
        ),
      ),
      SizedBox(height: 5),
      Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            maxLines: maxLines,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xffB1B1B1),
                  ),
                ),
                border: InputBorder.none
            ),
          ),
        ),
      ),
    ],
  );
}
