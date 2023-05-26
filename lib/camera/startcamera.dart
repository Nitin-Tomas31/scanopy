import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPreviewWidget extends StatefulWidget {
  const CameraPreviewWidget({Key? key}) : super(key: key);

  @override
  _CameraPreviewWidgetState createState() => _CameraPreviewWidgetState();
}

class _CameraPreviewWidgetState extends State<CameraPreviewWidget> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  File? _pictureFile; // Updated: Added '?' for null safety

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  Future<void> _initializeController() async {
    final cameras = await availableCameras();
    _controller = CameraController(cameras[0], ResolutionPreset.medium);
    _initializeControllerFuture = _controller.initialize();
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double getAspectRatio(CameraController controller) {
    final size = controller.value.previewSize;
    if (size != null) {
      return size.width / size.height;
    } else {
      return 0;
    }
  }

  void takePicture() async {
    try {
      final picture = await _controller.takePicture();
      setState(() {
        _pictureFile = File(picture.path);
      });
    } on CameraException catch (e) {
      print('Error: $e.code\nError Message: $e.message');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_initializeControllerFuture == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return FutureBuilder<void>(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Stack(
            children: [
              Positioned.fill(
                child: AspectRatio(
                  aspectRatio: getAspectRatio(_controller),
                  child: CameraPreview(_controller),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0x00000000), // Transparent color
                      ),
                    ),
                    onPressed: takePicture,
                    child: Image.asset(
                      'assets/page-1/images/circle-png-25313.png',
                      height: 90,
                      width: 90,
                    ),
                  ),
                ),
              ),
              if (_pictureFile != null)
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Image.file(
                      _pictureFile!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
