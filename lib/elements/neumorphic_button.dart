import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeumorphicButton extends StatefulWidget {
  const NeumorphicButton({Key? key}) : super(key: key);

  @override
  _NeumorphicButtonState createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isPressed = !_isPressed;
          Future.delayed(const Duration(milliseconds: 250), () {
            setState(() {
              _isPressed = !_isPressed;
            });
          });
        });
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
              boxShadow: _isPressed
                  ? null
                  : [
                      BoxShadow(
                          offset: const Offset(4, 4),
                          color: Colors.grey.shade500,
                          blurRadius: 15,
                          spreadRadius: 1),
                      const BoxShadow(
                          offset: Offset(-4, -4),
                          color: Colors.white,
                          blurRadius: 15,
                          spreadRadius: 1)
                    ]),
          child: Center(
              child: AnimatedDefaultTextStyle(
                  child: const Text("Send"),
                  style: GoogleFonts.nunito(
                      fontSize: _isPressed ? 20 : 24,
                      color: const Color.fromARGB(255, 6, 69, 121)),
                  duration: const Duration(milliseconds: 150)))),
    );
  }
}
