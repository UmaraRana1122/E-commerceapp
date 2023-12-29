import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(borderRadius: BorderRadius.circular(15));
  }

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
                height: 2.h,
              ),
              genericTextWidget("OTP Verification", fontSize: 22.sp),
              SizedBox(
                height: 6.h,
              ),
              Center(
                child: genericTextWidget(
                    "Enter the otp we have sent to your Number",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 3.h,
              ),
              TextFieldPin(
                  autoFocus: true,
                  codeLength: 4,
                  alignment: MainAxisAlignment.center,
                  defaultBoxSize: 55.0,
                  margin: 12,
                  selectedBoxSize: 46.0,
                  textStyle: TextStyle(fontSize: 16),
                  defaultDecoration: _pinPutDecoration.copyWith(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.grey)),
                  selectedDecoration: _pinPutDecoration,
                  onChange: (code) {}),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 7.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xffee7874),
                    borderRadius: BorderRadius.circular(12)),
                child: Align(
                    child: genericTextWidget("Verify",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
