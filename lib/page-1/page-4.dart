import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/page-5.dart';
import 'package:myapp/utils.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // page454S (23:49)
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 64 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              // undrawsharingarticlesrejnkp1yL (24:68)
              margin:
                  EdgeInsets.fromLTRB(6.65 * fem, 0 * fem, 0 * fem, 62 * fem),
              width: 258.65 * fem,
              height: 170 * fem,
              child: Image.asset(
                'assets/page-1/images/undrawsharingarticlesrejnkp-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // signaltT8 (23:50)
              margin:
                  EdgeInsets.fromLTRB(155 * fem, 0 * fem, 180 * fem, 0 * fem),
              width: double.infinity,
              height: 25 * fem,
            ),
            Container(
              // copyshareandexporttopdfordocum (23:53)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 25 * fem),
              constraints: BoxConstraints(
                maxWidth: 259 * fem,
              ),
              child: Text(
                'Copy, share and export to pdf\nor document format',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 18 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // convertpicturetotextimmediatel (23:54)
              margin: EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0 * fem, 76 * fem),
              constraints: BoxConstraints(
                maxWidth: 248 * fem,
              ),
              child: Text(
                'Convert picture to text immediately\nEasily edit text and share',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w300,
                  height: 1.2125 * ffem / fem,
                  color: const Color(0x7a000000),
                ),
              ),
            ),
            Container(
              // buttonCcE (23:55)
              margin:
                  EdgeInsets.fromLTRB(115 * fem, 0 * fem, 115 * fem, 0 * fem),
              width: double.infinity,
              height: 42 * fem,
              decoration: const BoxDecoration(
                color: Color(0xff66cfde),
              ),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  style:
                  TextButton.styleFrom(fixedSize: const Size(400, 100)),
                  child: Text(
                  'NEXT',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Inter',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2125 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
