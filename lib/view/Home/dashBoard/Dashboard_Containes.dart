//TODO DashBoard Conatiner no smart Widget


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget dashBoardContainer({
  required String title,
  required String subTitle,
  required String img,
}) {
  return Container(
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 2,
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            color: Color(0xff2E435B),
          ),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 15, left: 5),
          child: Text(
            subTitle,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Color(0xff2E435B),
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        trailing: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xff2E435B),
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(img)),
          ),
        ),
      ),
    ),
  );
}