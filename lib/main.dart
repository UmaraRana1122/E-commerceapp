import 'package:curvedesign/E-commerceApp/CartScreen.dart';
import 'package:curvedesign/E-commerceApp/NavigationScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'E-commerceApp/Payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: PaymentMethod(),
        );
      },
    );
  }
}
