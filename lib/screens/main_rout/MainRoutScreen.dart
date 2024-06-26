import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/font_manager.dart';
import 'controller/MainRoutGetxController.dart';

class MainRoutScreen extends StatefulWidget {
  @override
  State<MainRoutScreen> createState() => _MainRoutScreenState();
}

class _MainRoutScreenState extends State<MainRoutScreen> {
  //controller
  final MainRoutGetxController _mainRoutGetxController =
      Get.put(MainRoutGetxController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainRoutGetxController>(
      builder: (controller) {
        return Scaffold(
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: controller.screens[_mainRoutGetxController.currentIndex],
          bottomNavigationBar: SizedBox(
            height: 95.h,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 350.w,
                height: 80.h,
                child: GetBuilder<MainRoutGetxController>(
                  builder: (controller) => GNav(
                      selectedIndex: controller.currentIndex,
                      tabBorderRadius: 50.r,
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 7.h,
                      ),
                      duration: const Duration(milliseconds: 500),
                      // tab animation duration
                      gap: 5.w,
                      // the tab button gap between icon and text
                      color: Colors.white,
                      // unselected icon color
                      activeColor: Colors.white,
                      // selected icon and text color
                      iconSize: 10.h,
                      // tab button icon size
                      tabBackgroundColor: ColorManager.transparent,
                      // selected tab background color
                      onTabChange: (index) {
                        controller.changeBottom(index, context);
                      },
                      curve: Curves.easeInCirc,
                      tabs: [
                        GButton(
                            icon: Icons.home,
                            leading: controller.currentIndex == 0
                                ? Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 4.w, bottom: 4.w),
                                        child: Image.asset(
                                          IconsAssets.homeNav,
                                          color: ColorManager.primary,
                                          height: 20.h,
                                          width: 19.w,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                            fontSize: FontSize.s12,
                                            fontWeight: FontWeight.w400,
                                            color: ColorManager.primary),
                                      )
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 7.w, bottom: 7.w),
                                        child: Image.asset(
                                          IconsAssets.homeNav,
                                          color: Colors.grey,
                                          height: 20.h,
                                          width: 19.w,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                            fontSize: FontSize.s12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      )
                                    ],
                                  )),
                        GButton(
                          icon: Icons.home,
                          leading: controller.currentIndex == 1
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 4.w, bottom: 4.w),
                                      child: Image.asset(
                                        IconsAssets.groupNav,
                                        color: ColorManager.primary,
                                        height: 20.h,
                                        width: 19.w,

                                        // fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                    Text(
                                      "Groups",
                                      style: TextStyle(
                                          fontSize: FontSize.s12,
                                          fontWeight: FontWeight.w400,
                                          color: ColorManager.primary),
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 4.w, bottom: 4.w),
                                      child: Image.asset(
                                        IconsAssets.groupNav,
                                        color: Colors.grey,
                                        height: 20.h,
                                        width: 19.w,
                                      ),
                                    ),
                                    Text(
                                      "Groups",
                                      style: TextStyle(
                                          fontSize: FontSize.s12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                        ),
                        GButton(
                            icon: Icons.home,
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.r))),
                              padding: EdgeInsets.all(10.w),
                              child: Image.asset(
                                IconsAssets.midNav,
                                color: Colors.grey,
                                height: 25.h,
                                width: 25.w,
                                fit: BoxFit.fill,
                              ),
                            )),
                        GButton(
                          icon: Icons.home,
                          leading: controller.currentIndex == 3
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 4.w, bottom: 4.w),
                                      child: Image.asset(
                                        IconsAssets.messageNav,
                                        color: ColorManager.primary,
                                        height: 20.h,
                                        width: 19.w,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      "Messages",
                                      style: TextStyle(
                                          fontSize: FontSize.s12,
                                          fontWeight: FontWeight.w400,
                                          color: ColorManager.primary),
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 4.w, bottom: 4.w),
                                      child: Image.asset(
                                        IconsAssets.messageNav,
                                        color: Colors.grey,
                                        height: 20.h,
                                        width: 19.w,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      "Messages",
                                      style: TextStyle(
                                          fontSize: FontSize.s12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                        ),
                        GButton(
                          icon: Icons.home,
                          leading: controller.currentIndex == 4
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 4.w, bottom: 4.w),
                                      child: Image.asset(
                                        IconsAssets.profileNav,
                                        color: ColorManager.primary,
                                        height: 20.h,
                                        width: 19.w,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                          fontSize: FontSize.s12,
                                          fontWeight: FontWeight.w400,
                                          color: ColorManager.primary),
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 4.w, bottom: 4.w),
                                      child: Image.asset(
                                        IconsAssets.profileNav,
                                        color: Colors.grey,
                                        height: 20.h,
                                        width: 19.w,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      "Profile",
                                      style: TextStyle(
                                          fontSize: FontSize.s12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
