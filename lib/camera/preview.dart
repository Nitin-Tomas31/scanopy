import 'dart:io';
import 'package:flutter/material.dart';

class PicturePreviewPage extends StatelessWidget {
  final String picturePath;

  const PicturePreviewPage({Key? key, required this.picturePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final file = File(picturePath);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture Preview'),
      ),
      body: Center(
        child: Image.file(
          file,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
