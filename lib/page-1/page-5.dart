import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/camera/startcamera.dart';
import 'package:myapp/camera/image_picker.dart';
import 'package:myapp/page-1/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(241, 177, 50, 0),
        title: Text(
          'SCANOPY',
          style: SafeGoogleFont(
            'Montserrat',
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w600,
            height: 1.2125 * ffem / fem,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // page5GXp (26:69)
            padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 400),
                Container(
                  // youdonthaveanyfilesZ4z (26:98)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 104 * fem),
                  child: Text(
                    'You dont have any files',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 13 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.2125 * ffem / fem,
                      color: const Color(0x7a000000),
                    ),
                  ),
                ),
                Container(
                  // signalGVC (26:70)
                  margin: EdgeInsets.fromLTRB(
                      143 * fem, 0 * fem, 173 * fem, 0 * fem),
                  width: double.infinity,
                  height: 25 * fem,
                ),
                const SizedBox(height: 106),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(241, 177, 50, 0),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'My Files',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          // Handle button tap events
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ImagePickerScreen(),
              ),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CameraPreviewWidget(),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Settings(),
              ),
            );
          }
        },
      ),
    );
  }
}
