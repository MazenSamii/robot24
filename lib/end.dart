import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class End extends StatefulWidget {
  const End({Key? key}) : super(key: key);

  @override
  State<End> createState() => _EndState();
}

class _EndState extends State<End> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Image.asset('asset/end.gif'),
        ),
      ),
    );
  }
}
