import 'dart:async';
import 'package:myapp/page-1/page-2.dart';
import 'package:flutter/material.dart';
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
        padding: EdgeInsets.fromLTRB(12 * fem, 5 * fem, 1 * fem, 288 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 1, 253, 240),
            Color.fromARGB(169, 1, 253, 240),
            Color.fromARGB(86, 1, 253, 240),
            Color.fromARGB(0, 1, 253, 240)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          color: Color(0xff3fd1db),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300,
            ),
            Container(
              // scanopib3C (21:3)
              width: 120,
              margin:
                  EdgeInsets.fromLTRB(1 * fem, 20 * fem, 2 * fem, 105 * fem),
              child: Image.asset('assets/page-1/images/logo.png'),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              // signal71Y (1:5)
              margin:
                  EdgeInsets.fromLTRB(105 * fem, 0 * fem, 2 * fem, 10 * fem),
              width: double.infinity,
              height: 5 * fem,
              child: Text(
                'SCANOPY',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 32 * ffem,
                  fontWeight: FontWeight.w600,
                  height: .01 * ffem / fem,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
