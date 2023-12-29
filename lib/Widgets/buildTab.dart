import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget buildTab(String tabText) {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          tabText,
          style: TextStyle(
            color: Colors.black38,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
