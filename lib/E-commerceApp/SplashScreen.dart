import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("assets/images/image2.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 15.h,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 2.h,
                ),
                genericTextWidget("DP SHOP",
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white)
              ],
            ),
          )
        ],
      ),
    );
  }
}
