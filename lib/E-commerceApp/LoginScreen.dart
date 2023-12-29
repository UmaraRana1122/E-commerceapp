import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset("assets/images/freed.png"),
              SizedBox(
                height: 6.h,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xfff2f2ff),
                        spreadRadius: -1,
                        blurRadius: 22,
                        offset: Offset(0, 9),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    cursorColor: Color(0xff4B5768),
                    style: GoogleFonts.quicksand(
                      color: Color(0xff4B5768),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: .1.w,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: .1.w,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      hintText: "Enter Email",
                      hintStyle: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: .5.h,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xfff2f2ff),
                        spreadRadius: -1,
                        blurRadius: 22,
                        offset: Offset(0, 9),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    cursorColor: Color(0xff4B5768),
                    style: GoogleFonts.quicksand(
                      color: Color(0xff4B5768),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: .1.w,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: .1.w,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      hintText: "Enter Password",
                      hintStyle: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: genericTextWidget("Forgot Password?",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: 6.h,
              ),
              Container(
                height: 7.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xffee7874),
                    borderRadius: BorderRadius.circular(12)),
                child: Align(
                    child: genericTextWidget("Log In",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  genericTextWidget("Don't have an account?",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  SizedBox(
                    width: 2.w,
                  ),
                  genericTextWidget("Sign Up",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
