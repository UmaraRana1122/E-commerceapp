import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3.2.h,
                ),
                genericTextWidget("Update Your Profile",
                    color: Colors.black,
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700),
                SizedBox(
                  height: 1.6.h,
                ),
                genericTextWidget("Update your profile data",
                    color: Color(0xff4B5768),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400),
                SizedBox(
                  height: 4.h,
                ),
                genericTextWidget("Username",
                    color: Colors.black,
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 1.h,
                ),
                TextField(
                  cursorColor: Color(0xff4B5768),
                  style: TextStyle(color: Color(0xffdcdcdd)),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffD0D5DD),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4B5768),
                            width: .1.w,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Name',
                      hintStyle: TextStyle(
                          color: Color(0xff4B5768),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300)),
                ),
                SizedBox(
                  height: 2.2.h,
                ),
                genericTextWidget("New Password",
                    color: Colors.black,
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  obscureText: true,
                  cursorColor: Color(0xff4B5768),
                  style: TextStyle(color: Color(0xff4B5768)),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffD0D5DD),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4B5768),
                            width: .1.w,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Enter New Password',
                      hintStyle: TextStyle(
                          color: Color(0xff4B5768),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300)),
                ),
                SizedBox(
                  height: 2.2.h,
                ),
                genericTextWidget("Confirm Password",
                    color: Colors.black,
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  obscureText: true,
                  cursorColor: Color(0xff4B5768),
                  style: TextStyle(color: Color(0xff4B5768)),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffD0D5DD),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4B5768),
                            width: .1.w,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                          color: Color(0xff4B5768),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300)),
                ),
                SizedBox(
                  height: 2.2.h,
                ),
                genericTextWidget("Home Address",
                    color: Colors.black,
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 1.h,
                ),
                TextField(
                  cursorColor: Color(0xff4B5768),
                  style: TextStyle(color: Color(0xffdcdcdd)),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffD0D5DD),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4B5768),
                            width: .1.w,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Address 1',
                      hintStyle: TextStyle(
                          color: Color(0xff4B5768),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300)),
                ),
                SizedBox(
                  height: 2.2.h,
                ),
                genericTextWidget("Billing Address",
                    color: Colors.black,
                    fontSize: 16.5.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(
                  height: 1.h,
                ),
                TextField(
                  cursorColor: Color(0xff4B5768),
                  style: TextStyle(color: Color(0xffdcdcdd)),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffD0D5DD),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4B5768),
                            width: .1.w,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Address 1',
                      hintStyle: TextStyle(
                          color: Color(0xff4B5768),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300)),
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
