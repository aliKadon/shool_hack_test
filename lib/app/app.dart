import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/theme_manager.dart';
import '../screens/main_rout/MainRoutScreen.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
            locale: const Locale('en'),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: MainRoutScreen(),
            theme:
            getApplicationTheme(),
          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorSchemeSeed: const Color.fromRGBO(86, 80, 14, 171),
          ),
          themeMode: ThemeMode.dark,
        );
      },
    );
  }
}