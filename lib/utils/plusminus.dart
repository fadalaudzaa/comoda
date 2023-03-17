import 'package:flutter/material.dart';

class PlusMinusButton extends StatefulWidget {
  const PlusMinusButton({Key? key}) : super(key: key);

  @override
  _PlusMinusButtonState createState() => _PlusMinusButtonState();
}

class _PlusMinusButtonState extends State<PlusMinusButton> {
  int _counter = 0; 

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
       if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            if (_counter > 0) {
              _decrementCounter();
            }} ,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                border: Border.all(
                  color: //if counter is 0, then grey, else color(0xff297C8F)
                      _counter == 0 ? Colors.grey : Color(0xff297C8F),
                  width: 0.9,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove,
                    color: _counter == 0 ? Colors.grey : Color(0xff297C8F),
                    size: 15,
                  ),
                ],
              )),
        ),
        SizedBox(width: 5),
        SizedBox(
          height: 20,
          width: 20,
          child: Center(
            child: Text(
              '$_counter',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: _incrementCounter,
          child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                border: Border.all(
                  color: Color(0xff297C8F),
                  width: 0.9,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Color(0xff297C8F),
                    size: 15,
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
