import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isChecked = false;
  final List<String> imageList = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];
  final List productTitles = [
    "Warm Zipper",
    "Knitted Wool",
    "Zipper Win",
    "Child Win"
  ];
  final List prices = [
    "\$300",
    "\$500",
    "\$100",
    "\$30",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                  child: ListView.builder(
                      itemCount: imageList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Checkbox(
                                  splashRadius: 2.h,
                                  activeColor: Color(0xffDB3022),
                                  value: isChecked,
                                  onChanged: ((value) {
                                    setState(() {
                                      isChecked = !isChecked;
                                    });
                                  })),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  imageList[index],
                                  height: 11.h,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productTitles[index],
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17.sp),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    "Hooded Jacket",
                                    style: TextStyle(
                                        color: Colors.black26, fontSize: 15.sp),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    prices[index],
                                    style: TextStyle(
                                        color: Color(0xffDB3022),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 17.sp),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  ConstrainedBox(
                                    constraints: BoxConstraints(minWidth: 120),
                                    child: IntrinsicWidth(
                                      child: TextField(
                                          keyboardType: TextInputType.number,
                                          textAlign: TextAlign.center,
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.zero,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0),
                                                ),
                                              ),
                                              prefixIcon: IconButton(
                                                  icon: Icon(Icons.remove),
                                                  onPressed: () async {}),
                                              suffixIcon: IconButton(
                                                  icon: Icon(Icons.add),
                                                  onPressed: () async {}))),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    genericTextWidget("Select all",
                        fontSize: 17.sp, fontWeight: FontWeight.w400),
                    Checkbox(
                        checkColor: Colors.white,
                        splashRadius: 2.h,
                        activeColor: Color(0xffDB3022),
                        value: isChecked,
                        onChanged: ((value) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        })),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    genericTextWidget("Total Payment",
                        fontSize: 17.sp, fontWeight: FontWeight.w400),
                    genericTextWidget("\$300",
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffDB3022)),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: 6.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Color(0xffDB3022),
                      borderRadius: BorderRadius.circular(15)),
                  child: Align(
                      child: genericTextWidget("Check Out",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
