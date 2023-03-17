import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  bool _isButtonPressed = false;

  void _changeButtonColor() {
    setState(() {
      _isButtonPressed = !_isButtonPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _changeButtonColor(),
      onTapUp: (_) => _changeButtonColor(),
      onTapCancel: () => setState(() => _isButtonPressed = false),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.13),
          color: _isButtonPressed ? Color(0xff297c8f) : Color(0xffb1b3b3),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Submit",
              style: TextStyle(
                fontSize: 16,
                color: _isButtonPressed ? Colors.white : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
