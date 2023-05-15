import 'dart:async';
import 'package:myapp/page-1/page-2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // splashscreen7Zx (1:2)
        padding: EdgeInsets.fromLTRB(12 * fem, 5 * fem, 7 * fem, 288 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff3fd1db),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              // scanopib3C (21:3)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 106 * fem),
              child: Text(
                'SCANOPI',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 32 * ffem,
                  fontWeight: FontWeight.w800,
                  height: 1.2125 * ffem / fem,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // signal71Y (1:5)
              margin:
                  EdgeInsets.fromLTRB(143 * fem, 0 * fem, 173 * fem, 0 * fem),
              width: double.infinity,
              height: 25 * fem,
            ),
          ],
        ),
      ),
    );
  }
}
