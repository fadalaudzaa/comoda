import 'package:flutter/material.dart';
import 'package:comoda/pages/donate.dart';
import 'package:comoda/pages/home.dart';
import 'package:comoda/pages/recycle.dart';

class CurvedBottomNavigationBar extends StatefulWidget {
  @override
  _CurvedBottomNavigationBarState createState() =>
      _CurvedBottomNavigationBarState();
}

class _CurvedBottomNavigationBarState extends State<CurvedBottomNavigationBar> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: Offset(1.0, -3.0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: _currentIndex == 0 ? Color(0xff29788E) : Colors.grey,
            ),
            onPressed: () {
              print('cart');
              setState(() {
                _currentIndex = 0;
                Navigator.push(
                   context,
                   PageRouteBuilder(
                     pageBuilder: (context, animation1, animation2) => Recycle(),
                     transitionDuration: Duration.zero,
                     reverseTransitionDuration: Duration.zero,
                   ),
                 );
              });
            },
          ),
          Stack(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: _currentIndex == 1 ? Color(0xff29788E) : Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              Positioned(
                top: 10.0,
                left: 10.0,
                child: IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print('home');
                    setState(() {
                      _currentIndex = 1;
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              Home(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    });
                  },
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: _currentIndex == 2 ? Color(0xff29788E) : Colors.grey,
            ),
            onPressed: () {
              print('favourite');
              setState(() {
                _currentIndex = 2;
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        Donate(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
