import 'package:flutter/material.dart';
import 'ocr_service.dart';

class OCRResultScreen extends StatefulWidget {
  final String imagePath;
  final OCRService ocrService;

  const OCRResultScreen({
    Key? key,
    required this.imagePath,
    required this.ocrService,
  }) : super(key: key);

  @override
  _OCRResultScreenState createState() => _OCRResultScreenState();
}

class _OCRResultScreenState extends State<OCRResultScreen> {
  String? _scannedText;

  @override
  void initState() {
    super.initState();
    _performOCR();
  }

  Future<void> _performOCR() async {
    final scannedText = await widget.ocrService.scanImage(widget.imagePath);
    setState(() {
      _scannedText = scannedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 6, 238),
        title: const Text('OCR Result'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  _scannedText ?? '',
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
