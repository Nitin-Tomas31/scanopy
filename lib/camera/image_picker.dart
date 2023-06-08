import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:myapp/camera/displayscreen.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  _ImagePickerScreenState createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePicker picker = ImagePicker();
  late File _imageFile = File('assets/page-1/images/imgicon.png');
  bool _imageSelected = false;

  Future<void> _pickImageFromGallery() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
        _imageSelected = true;
      });

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => DisplayPictureScreen(imagePath: _imageFile.path),
        ),
      );
    } else {
      setState(() {
        _imageSelected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 6, 238),
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_imageSelected)
              Image.file(
                _imageFile,
                width: 200,
                height: 200,
              )
            else
              const Text(
                'No image selected',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ElevatedButton(
              onPressed: _pickImageFromGallery,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 68, 6, 238),
              ),
              child: const Text('Pick Image from Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}
