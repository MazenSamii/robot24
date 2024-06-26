import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  List<BluetoothDevice> devicesList = [];

  @override
  void initState() {
    super.initState();
    scanForDevices();
  }

  void scanForDevices() {
    flutterBlue.scan().listen((scanResult) {
      if (!devicesList.contains(scanResult.device)) {
        setState(() {
          devicesList.add(scanResult.device);
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Image.asset('asset/start.gif'),
        ),
      ),
    );
  }
}
