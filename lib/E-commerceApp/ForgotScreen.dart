import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back_rounded),
              SizedBox(
                height: 3.h,
              ),
              genericTextWidget("Forgot Password", fontSize: 22.sp),
              SizedBox(
                height: 3.h,
              ),
              genericTextWidget(
                "Please enter your email address.You will recieve a link to create or set a new password via email.",
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 2.h,
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
                      hintText: " Email",
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
                height: 4.h,
              ),
              Container(
                height: 7.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xffee7874),
                    borderRadius: BorderRadius.circular(12)),
                child: Align(
                    child: genericTextWidget("Send Code",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: genericTextWidget("Or",
                    fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: genericTextWidget("Verifying Using Number",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
