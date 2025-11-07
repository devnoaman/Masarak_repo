import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:masarak_ocr/recognizer/ml_kit_text_recognizer.dart';
import 'package:masarak_ocr/recognizer/recognition_response.dart';
import 'package:masarak_ocr/recognizer/tesseract_text_recognizer.dart';
import 'package:masarak_ocr/recognizer/text_recognizer.dart';
import 'package:image_cropper/image_cropper.dart';

class CropAspectRatioPresetCustom implements CropAspectRatioPresetData {
  @override
  (int, int)? get data => (2, 3);

  @override
  String get name => '2x3 (customized)';
}

// api key
// AIzaSyCFcnx4gA0-9Eiuu152RlKw7XXid2jhSGA
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OcrScreen(),
    );
  }
}

class OcrScreen extends StatefulWidget {
  const OcrScreen({
    super.key,
  });

  @override
  State<OcrScreen> createState() => _OcrScreenState();
}

class _OcrScreenState extends State<OcrScreen> {
  late ImagePicker _picker;
  late ITextRecognizer _recognizer;
  late ITextRecognizer _tesseractrecognizer;

  @override
  void initState() {
    super.initState();
    _picker = ImagePicker();
    _recognizer = MLKitTextRecognizer();
    _tesseractrecognizer = TesseractTextRecognizer();
  }

  @override
  void dispose() {
    if (_recognizer is MLKitTextRecognizer) {
      (_recognizer as MLKitTextRecognizer).dispose();
    }
    super.dispose();
  }

  Widget imagePickAlert({
    void Function()? onCameraPressed,
    void Function()? onGalleryPressed,
  }) {
    return Material(
      child: AlertDialog(
        title: const Text(
          "Pick a source:",
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text(
                "Camera",
              ),
              onTap: onCameraPressed,
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text(
                "Gallery",
              ),
              onTap: onGalleryPressed,
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> obtainImage(ImageSource source) async {
    final file = await _picker.pickImage(source: source);
    // return file?.path;
    if (file == null) return null;
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: file.path,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Cropper',
          toolbarColor: Colors.deepOrange,
          toolbarWidgetColor: Colors.white,
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
            CropAspectRatioPresetCustom(),
          ],
        ),
        IOSUiSettings(
          title: 'Cropper',
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
            CropAspectRatioPresetCustom(), // IMPORTANT: iOS supports only one custom aspect ratio in preset list
          ],
        ),
        WebUiSettings(
          context: context,
        ),
      ],
    );
    return croppedFile?.path;
  }

  void processImage(String imgPath) async {
    final recognizedText = await _recognizer.processImage(imgPath);
    // ...
    setState(() {
      _response =
          RecognitionResponse(imgPath: imgPath, recognizedText: recognizedText);
    });
  }

  void processTesseractImage(String imgPath) async {
    final recognizedText = await _tesseractrecognizer.processImage(imgPath);
    // ...
    setState(() {
      _response =
          RecognitionResponse(imgPath: imgPath, recognizedText: recognizedText);
    });
  }

  RecognitionResponse? _response;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _response == null
          ? const Center(
              child: Text('Pick image to continue'),
            )
          : ListView(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  child: Image.file(File(_response!.imgPath)),
                ),
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Recognized Text",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Clipboard.setData(
                                  ClipboardData(
                                    text: _response!.recognizedText,
                                  ),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Copied to Clipboard'),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.copy),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(_response!.recognizedText),
                      ],
                    )),
              ],
            ),
      bottomNavigationBar: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => imagePickAlert(
                  onCameraPressed: () async {
                    // Pick image from Camera
                    final imgPath = await obtainImage(ImageSource.camera);
                    // ...
                    if (imgPath == null) return;
                    processImage(imgPath);
                    Navigator.of(context).pop();
                  },
                  onGalleryPressed: () async {
                    // Pick image from Gallery
                    final imgPath = await obtainImage(ImageSource.gallery);
                    // ...
                    if (imgPath == null) return;
                    processImage(imgPath);
                    Navigator.of(context).pop();
                  },
                ),
              );
            },
            child: const Text('Hello World!'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => imagePickAlert(
                  onCameraPressed: () async {
                    // Pick image from Camera
                    final imgPath = await obtainImage(ImageSource.camera);
                    // ...
                    if (imgPath == null) return;
                    processTesseractImage(imgPath);
                    Navigator.of(context).pop();
                  },
                  onGalleryPressed: () async {
                    // Pick image from Gallery
                    final imgPath = await obtainImage(ImageSource.gallery);
                    // ...
                    if (imgPath == null) return;
                    processTesseractImage(imgPath);
                    Navigator.of(context).pop();
                  },
                ),
              );
            },
            child: const Text('tesseract'),
          ),
        ],
      ),
    );
  }
}
