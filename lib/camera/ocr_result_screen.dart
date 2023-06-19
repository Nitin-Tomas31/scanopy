import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
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
  String? _translatedText;

  @override
  void initState() {
    super.initState();
    _performOCR();
  }

  Future<void> _performOCR() async {
    final scannedText = await widget.ocrService.scanImage(widget.imagePath);
    setState(() {
      _scannedText = scannedText;
      _translateText(); // Call translation method after scanning
    });
  }

  Future<void> _translateText() async {
    if (_scannedText != null) {
      final translator =
          GoogleTranslator(); // Create an instance of the translator
      final translation =
          await translator.translate(_scannedText!, from: 'en', to: 'ml');
      setState(() {
        _translatedText = translation.text;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 6, 238),
        title: const Text('Translated Text'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  _translatedText ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold, // Set the font weight to bold
                  ),
                  maxLines: 1000, // Limit the text to 2 lines
                  overflow: TextOverflow
                      .ellipsis, // Display ellipsis if the text exceeds 2 lines
                  textAlign: TextAlign.left, // Align the text to center
                  softWrap: true, // Allow soft wrapping of the text
                  textWidthBasis: TextWidthBasis
                      .longestLine, // Set the width basis to the longest line
                  textScaleFactor: 1.0, // Set the text scale factor to 1.0
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
