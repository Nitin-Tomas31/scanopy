import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/splash-screen.dart';
// import 'package:myapp/page-1/settings.dart';
// import 'package:myapp/page-1/page-5.dart';
// import 'package:myapp/page-1/page-2.dart';
// import 'package:myapp/page-1/page-3.dart';
// import 'package:myapp/page-1/page-4.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: SingleChildScrollView(
          child: SplashScreen(),
        ),
      ),
    );
  }
}
