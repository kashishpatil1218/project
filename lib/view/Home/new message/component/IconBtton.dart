
import 'package:flutter/material.dart';

Widget iconButton(String img, Color color) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(img),
      ),
    ),
  );
}