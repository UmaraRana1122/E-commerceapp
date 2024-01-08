import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String option = 'amazon';
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 18.w,
                  ),
                  genericTextWidget("Payment Method", fontSize: 19.sp)
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  height: 7.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: index == 0 ? Colors.redAccent : Colors.grey,
                      width: .4.w,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Radio(
                          activeColor: Colors.red,
                          value: '0',
                          groupValue: '$index',
                          onChanged: (value) {
                            setState(() {
                              option = value.toString();
                              index = 0;
                            });
                          },
                        ),
                        genericTextWidget(
                          "Amazon Pay",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/logo/amazon.png",
                          height: 10.h,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  height: 7.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: index == 1 ? Colors.redAccent : Colors.grey,
                      width: .4.w,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Radio(
                          activeColor: Colors.red,
                          value: '1',
                          groupValue: '$index',
                          onChanged: (value) {
                            setState(() {
                              option = value.toString();
                              index = 1;
                            });
                          },
                        ),
                        genericTextWidget(
                          "Credit Card",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        Spacer(),
                        Image.asset("assets/logo/visa.png")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Container(
                  height: 7.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: index == 2 ? Colors.redAccent : Colors.grey,
                      width: .4.w,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Radio(
                          activeColor: Colors.red,
                          value: '2',
                          groupValue: '$index',
                          onChanged: (value) {
                            setState(() {
                              option = value.toString();
                              index = 2;
                            });
                          },
                        ),
                        genericTextWidget(
                          "Pay Pal",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        Spacer(),
                        Image.asset("assets/logo/paypal.png")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Container(
                  height: 7.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: index == 3 ? Colors.redAccent : Colors.grey,
                      width: .4.w,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Radio(
                          activeColor: Colors.red,
                          value: '3',
                          groupValue: '$index',
                          onChanged: (value) {
                            setState(() {
                              option = value.toString();
                              index = 3;
                            });
                          },
                        ),
                        genericTextWidget(
                          "Google Pay",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        Spacer(),
                        Image.asset("assets/logo/g.png")
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  genericTextWidget("Sub-Total",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                  genericTextWidget("\$300.50",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  genericTextWidget("Shipping Fee",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                  genericTextWidget("\$15.00",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  genericTextWidget("Total Payment",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  genericTextWidget("\$315.50",
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.redAccent),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 7.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xffDB3022),
                    borderRadius: BorderRadius.circular(15)),
                child: Align(
                    child: genericTextWidget("Confirm Payment",
                        fontSize: 16.sp,
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
