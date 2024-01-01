import 'package:curvedesign/Widgets/buildTab.dart';
import 'package:curvedesign/Widgets/genericTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  final List<String> tabs = ["All", "Category", "Top", "Recommended"];
  final List<String> imageList = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image3.jpg",
    "assets/images/image4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 6.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffDB3022),
                          ),
                          border: InputBorder.none,
                          labelText: "Find your Product",
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        Icons.notifications,
                        size: 35,
                        color: Color(0xffDB3022),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 20.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF0DD),
                      borderRadius: BorderRadius.circular(13)),
                  child: Image.asset("assets/images/freed.png"),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: tabs
                        .map((tab) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: buildTab(tab),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(height: 1.h),
                SizedBox(
                  height: 20.h,
                  child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 20.h,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    imageList[index],
                                    fit: BoxFit.cover,
                                    height: 20.h,
                                    width: 30.w,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  height: 3.h,
                                  width: 7.w,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      size: 2.2.h,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                genericTextWidget("Newest Products",
                    fontWeight: FontWeight.w700),
                SizedBox(
                  height: 2.h,
                ),
                GridView.builder(
                  itemCount: imageList.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 4,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.h,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      imageList[index],
                                      fit: BoxFit.cover,
                                      height: 20.h,
                                      width: 40.w,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    height: 3.h,
                                    width: 7.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        size: 2.2.h,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
