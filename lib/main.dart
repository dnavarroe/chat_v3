import 'package:flutter/material.dart';
import 'package:chat_app_v3/colors.dart';
import 'package:chat_app_v3/screens/mobile_layout_screen.dart';
import 'package:chat_app_v3/screens/web_layout_screen.dart';
import 'package:chat_app_v3/utils/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cuentamelo Wp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileLayoutScreen(),
        webScreenLayout: WebLayoutScreen(),
      ),
    );
  }
}