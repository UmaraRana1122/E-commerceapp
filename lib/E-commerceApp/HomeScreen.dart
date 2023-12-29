import 'package:curvedesign/Widgets/buildTab.dart';
import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List tabs = ["All", "Category", "Top", "Recommended"];
    List imageList = [
      "assets/images/image1.jpg",
      "assets/images/image2.jpg",
      "assets/images/image3.jpg",
      "assets/images/image4.jpg",
    ];
    List productTitles = [
      "Warm Zipper",
      "Knitted Wool",
      "Zipper Win",
      "child Win",
    ];
    List prices = [
      "\$300",
      "\$650",
      "\$50",
      "\$100",
    ];
    List reviews = [
      "54",
      "120",
      "520",
      "540",
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 7.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ]),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffDB3022),
                          ),
                          border: InputBorder.none,
                          label: genericTextWidget("Find your Product",
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  Container(
                    height: 7.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ]),
                    child: Icon(
                      Icons.notifications,
                      size: 35,
                      color: Color(0xffDB3022),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                  height: 20.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF0DD),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Image.asset("assets/images/freed.png")),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: buildTab(tabs[index]),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 30.h,
                child: ListView.builder(
                    itemCount: imageList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 17.h,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(imageList[index]),
                                    ),
                                  ),
                                  Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Container(
                                        height: 3.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              productTitles[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.sp),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '${'(' + reviews[index]})',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp),
                                ),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 2.h,
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 2),
                  itemBuilder: (context, index) {
                    return Container();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
