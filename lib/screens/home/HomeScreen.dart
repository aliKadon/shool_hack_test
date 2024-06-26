import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:voice_message_package/voice_message_package.dart';

import '../../resources/assets_manager.dart';
import '../../resources/font_manager.dart';
import '../../widget/ExpandableText.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(12.h),
            child: Icon(Icons.arrow_back),
          ),
          Spacer(),
          Text(
            "Post",
            style:
                TextStyle(fontSize: FontSize.s16, fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(12.h),
            child: const Text(
              "+ invite",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.white.withOpacity(0.2),
            height: 0.5.h,
            thickness: 0.5,
          ),
          Container(
            padding: EdgeInsets.only(left: 12.h, right: 12.h, top: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      ImageAssets.personOne,
                      height: 45.h,
                      width: 45.w,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: Text(
                          "Joshua Lawrence",
                          style: TextStyle(fontSize: FontSize.s16),
                        )),
                    Container(
                        margin: EdgeInsets.only(left: 10.w),
                        child: Text(
                          "@joshua95 . 8h",
                          style: TextStyle(
                              fontSize: FontSize.s12, color: Colors.grey),
                        )),
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  "Lecture about AI Technology",
                  style: TextStyle(fontSize: FontSize.s16),
                ),
                Text(
                  "By : Muhammed",
                  style: TextStyle(fontSize: FontSize.s16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 250.w,
            child: VoiceMessageView(
              backgroundColor: Colors.black,
              activeSliderColor: Colors.white,
              circlesColor: Colors.white,
              playPauseButtonLoadingColor: Colors.black,
              counterTextStyle:
                  TextStyle(color: Colors.white, fontSize: FontSize.s10),
              circlesTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: FontSize.s10,
                  fontWeight: FontWeight.w700),
              playIcon: const Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              pauseIcon: const Icon(
                Icons.pause,
                color: Colors.black,
              ),
              controller: VoiceController(
                audioSrc:
                    'https://commondatastorage.googleapis.com/codeskulptor-demos/DDR_assets/Sevish_-__nbsp_.mp3',
                onComplete: () {},
                onPause: () {},
                onPlaying: () {},
                onError: (err) {},
                maxDuration: const Duration(seconds: 10),
                isFile: false,
              ),
              innerPadding: 12,
              cornerRadius: 20,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Expanded(child: postBarItem(IconsAssets.comment, "324")),
                Expanded(child: postBarItem(IconsAssets.heart, "324")),
                Expanded(child: postBarItem(IconsAssets.show, "324")),
                Expanded(child: postBarItem(IconsAssets.ai, "Ai Chat")),
                Expanded(child: postBarItem(IconsAssets.share, "")),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          commentWidget(
              image: ImageAssets.personTwo,
              title:
                  "Interesting Nicola that not one reply or tag on this #UX talent shout out in the 24hrs since your tweet here asdasdasd jadjabsd kajbdjasbsd jadjassd ahdasdhah"),
          SizedBox(
            height: 20.h,
          ),
          commentWidget(
              image: ImageAssets.personThree,
              title:
                  "Maybe I forgot the hashtags. #hiringux #designjobs #sydneyux #sydneydesigners #uxjobs")
        ],
      ),
    );
  }

  Container postBarItem(
    String imageAssets,
    String? title,
  ) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            imageAssets,
            width: 17.w,
            height: 16.w,
          ),
          SizedBox(
            width: 4.w,
          ),
          Text(
            title ?? "",
            style: TextStyle(fontSize: FontSize.s12),
          )
        ],
      ),
    );
  }

  Container commentWidget({
    required String image,
    required String title,
  }) {
    return Container(
      margin: EdgeInsets.only(left: 12.w),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                image,
                height: 55.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "kiero_d",
                        style: TextStyle(fontSize: FontSize.s16),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "@kiero_d . 2d",
                        style: TextStyle(
                            fontSize: FontSize.s12, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Replaying to",
                        style: TextStyle(
                            fontSize: FontSize.s14, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "@joshua95",
                        style: TextStyle(
                            fontSize: FontSize.s12, color: Colors.blue),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Container(
            child: IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(
                    width: 22.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ExpandableText(trimLength: 100, title),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          postBarItem(IconsAssets.comment, "324"),
                          SizedBox(
                            width: 20.w,
                          ),
                          postBarItem(IconsAssets.heart, "324"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStyledText(String text) {
    List<TextSpan> spans = [];
    final RegExp exp = RegExp(r"(#[a-zA-Z0-9_]+)|(\s+)|([^#\s]+)");
    exp.allMatches(text).forEach((match) {
      if (match.group(1) != null) {
        spans.add(TextSpan(
          text: match.group(1),
          style: TextStyle(color: Colors.blue),
        ));
      } else {
        spans.add(TextSpan(
          text: match.group(0),
          style: TextStyle(color: Colors.white),
        ));
      }
    });

    return RichText(
      text: TextSpan(children: spans),
    );
  }
}
