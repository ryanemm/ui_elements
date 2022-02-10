import 'package:flutter/material.dart';
import 'package:ui_elements/elements/neumorphic_button.dart';

class TestBed extends StatefulWidget {
  const TestBed({Key? key}) : super(key: key);

  @override
  _TestBedState createState() => _TestBedState();
}

class _TestBedState extends State<TestBed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: NeumorphicButton(),
      ),
    );
  }
}
