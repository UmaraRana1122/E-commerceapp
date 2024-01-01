import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductScreen extends StatelessWidget {
  final List<String> tabs = ["All", "Category", "Top", "Recommended"];
  final List<String> images = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];

   ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                  width: 100.w,
                  child: FanCarouselImageSlider(
                    sliderWidth: 100.w,
                    imagesLink: images,
                    isAssets: true,
                    autoPlay: false,
                    sliderHeight: 40.h,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        genericTextWidget("Warm Zipper",
                            fontSize: 18.sp, fontWeight: FontWeight.w700),
                        genericTextWidget("Hooded Jacket",
                            color: Colors.black54,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ],
                    ),
                    Spacer(),
                    genericTextWidget("\$300.00",
                        color: Colors.red,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700),
                  ],
                ),
                SizedBox(
                  height: .6.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    itemSize: 25,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(
                  height: .6.h,
                ),
                genericTextWidget(
                    "Cool windy weather is on its way.Send hime out the door in the jacket ,he wants to.Warm Zipper Hooded jacket",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 3.h,
                        backgroundColor: Colors.black38.withOpacity(
                          0.05,
                        ),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Color(0xffDB3022),
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              isDismissible: true,
                              backgroundColor: Colors.transparent,
                              isScrollControlled: true,
                              context: context,
                              builder: ((context) => DraggableScrollableSheet(
                                  maxChildSize: 0.63,
                                  minChildSize: 0.3,
                                  initialChildSize: 0.40,
                                  builder: (context, ScrollController scroll) {
                                    return ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                        child: Container(
                                          color: Color(0xffF2FCFC),
                                          child: StatefulBuilder(
                                              builder: (context, innerstate) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      genericTextWidget("Size:",
                                                          fontSize: 18.sp),
                                                      SizedBox(
                                                        width: 6.w,
                                                      ),
                                                      genericTextWidget("S",
                                                          fontSize: 18.sp),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      genericTextWidget("M",
                                                          fontSize: 18.sp),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      genericTextWidget("L",
                                                          fontSize: 18.sp),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      genericTextWidget("XL",
                                                          fontSize: 18.sp),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      genericTextWidget(
                                                          "Color:",
                                                          fontSize: 18.sp),
                                                      SizedBox(
                                                        width: 2.w,
                                                      ),
                                                      CircleAvatar(
                                                        radius: 1.5.h,
                                                        backgroundColor:
                                                            Colors.green,
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      CircleAvatar(
                                                        radius: 1.5.h,
                                                        backgroundColor:
                                                            Colors.red,
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      CircleAvatar(
                                                        radius: 1.5.h,
                                                        backgroundColor:
                                                            Colors.amberAccent,
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      CircleAvatar(
                                                        radius: 1.5.h,
                                                        backgroundColor:
                                                            Colors.blueGrey,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      genericTextWidget(
                                                          "Total:",
                                                          fontSize: 18.sp),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      genericTextWidget("-",
                                                          fontSize: 18.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      genericTextWidget("1",
                                                          fontSize: 20.sp,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      genericTextWidget("+",
                                                          fontSize: 18.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      genericTextWidget(
                                                          "Total Payment",
                                                          fontSize: 18.sp),
                                                      Spacer(),
                                                      genericTextWidget("\$400",
                                                          fontSize: 18.sp,
                                                          color: Colors.red),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 3.h,
                                                  ),
                                                  Center(
                                                    child: Container(
                                                      height: 6.h,
                                                      width: 65.w,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xffDB3022),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15)),
                                                      child: Center(
                                                          child:
                                                              genericTextWidget(
                                                                  "Check Out",
                                                                  color: Color(
                                                                      0xffFFFFFF),
                                                                  fontSize:
                                                                      18.sp)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                        ));
                                  })));
                        },
                        child: Container(
                          height: 6.h,
                          width: 65.w,
                          decoration: BoxDecoration(
                              color: Color(0xffDB3022),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: genericTextWidget("Buy Now",
                                  color: Color(0xffFFFFFF), fontSize: 18.sp)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
