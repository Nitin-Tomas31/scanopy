import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // page5GXp (26:69)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup6yciBen (BmLM8JWvMAZrDE8JSo6yCi)
              padding: EdgeInsets.fromLTRB(12*fem, 5*fem, 7*fem, 180*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group2JDc (26:71)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23.02*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0.98*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pmCpn (I26:71;1:13)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 223*fem, 0*fem),
                          child: Text(
                            '9:40pm',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // group16fG (I26:71;16:2)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.18*fem, 5.31*fem, 0*fem),
                          width: 14.42*fem,
                          height: 15.18*fem,
                          child: Image.asset(
                            'assets/page-1/images/group-1.png',
                            width: 14.42*fem,
                            height: 15.18*fem,
                          ),
                        ),
                        Container(
                          // wific7p (I26:71;1:7)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.31*fem, 0.02*fem),
                          width: 18.98*fem,
                          height: 13.28*fem,
                          child: Image.asset(
                            'assets/page-1/images/wifi-YHt.png',
                            width: 18.98*fem,
                            height: 13.28*fem,
                          ),
                        ),
                        Container(
                          // batterythreequarters7qG (I26:71;1:9)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.02*fem),
                          width: 18.98*fem,
                          height: 9.49*fem,
                          child: Image.asset(
                            'assets/page-1/images/battery-three-quarters-n4n.png',
                            width: 18.98*fem,
                            height: 9.49*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupmz8zd2v (BmLLptrG3FzBCwZcW5MZ8z)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 259*fem, 295*fem),
                    width: 82*fem,
                    height: 25*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // home9X4 (26:81)
                          left: 25*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 57*fem,
                              height: 25*fem,
                              child: Text(
                                'Home',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // vectordx2 (26:86)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 25*fem,
                              height: 19.44*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-ZcS.png',
                                width: 25*fem,
                                height: 19.44*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // youdonthaveanyfilesZ4z (26:98)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 104*fem),
                    child: Text(
                      'You dont have any files',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 13*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.2125*ffem/fem,
                        color: Color(0x7a000000),
                      ),
                    ),
                  ),
                  Container(
                    // signalGVC (26:70)
                    margin: EdgeInsets.fromLTRB(143*fem, 0*fem, 173*fem, 0*fem),
                    width: double.infinity,
                    height: 25*fem,
                  ),
                ],
              ),
            ),
            Container(
              // autogrouptvyspFp (BmLLvj1suP3xjqjT8ATVYS)
              width: double.infinity,
              height: 106*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle2MFk (26:84)
                    left: 0*fem,
                    top: 33*fem,
                    child: Align(
                      child: SizedBox(
                        width: 360*fem,
                        height: 73*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0x7c66cfde),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // myfiles4fx (26:96)
                    left: 37*fem,
                    top: 79*fem,
                    child: Align(
                      child: SizedBox(
                        width: 47*fem,
                        height: 15*fem,
                        child: Text(
                          'My Files',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.2125*ffem/fem,
                            color: Color(0x99000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // settingsa8W (26:97)
                    left: 273*fem,
                    top: 82*fem,
                    child: Align(
                      child: SizedBox(
                        width: 47*fem,
                        height: 15*fem,
                        child: Text(
                          'Settings',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w300,
                            height: 1.2125*ffem/fem,
                            color: Color(0x7a000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse3sNW (26:93)
                    left: 141*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 70*fem,
                        height: 70*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(35*fem),
                            color: Color(0xff19d2ec),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorAsQ (26:88)
                    left: 47*fem,
                    top: 51*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 22.76*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-EWr.png',
                          width: 20*fem,
                          height: 22.76*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectort2i (26:90)
                    left: 155*fem,
                    top: 15*fem,
                    child: Align(
                      child: SizedBox(
                        width: 41*fem,
                        height: 35.88*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-82i.png',
                          width: 41*fem,
                          height: 35.88*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vectorofU (26:92)
                    left: 285*fem,
                    top: 51*fem,
                    child: Align(
                      child: SizedBox(
                        width: 25*fem,
                        height: 27.5*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-PJv.png',
                          width: 25*fem,
                          height: 27.5*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}