import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_web_qrcode_scanner/flutter_web_qrcode_scanner.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({super.key});

  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  String? qrText;

  @override
  void initState() {
    super.initState();
    _requestCameraPermission();
  }

  Future<void> _requestCameraPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      await Permission.camera.request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
            child: FlutterWebQrcodeScanner(
              cameraDirection: CameraDirection.back,
              stopOnFirstResult:
                  false, // set false if you don't want to stop video preview on getting first result
              onGetResult: (result) {
                setState(() {
                  qrText = result;
                  print('Scanned QR Code: $qrText');
                  Navigator.pop(context,
                      qrText); // Return the qrText to the previous screen
                });
              },
              width: 400,
              height: 400,
            ),
          ),
          Center(
            child: Center(
              child: Text('Scan result: $qrText'),
            ),
          )
        ],
      ),
    );
  }
}
