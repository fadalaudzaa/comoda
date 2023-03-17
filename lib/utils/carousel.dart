import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderWidget extends StatefulWidget {
  @override
  _CarouselSliderWidgetState createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int _currentIndex = 0;
  List<String> _imagePaths = [
    'stradi1.png', 
    'stradi2.png',
    'stradi3.png',
  ];
  List<Widget> _images = [];

  @override
  void initState() {
    super.initState();
    _loadImages();
  }
  void _loadImages() {
    for (String imagePath in _imagePaths) {
      _images.add(Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.contain,
          ),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _images,
          options: CarouselOptions(
            enableInfiniteScroll: true,
            autoPlay: true,
            aspectRatio: 2.5,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              print('index: $index, reason: $reason');
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: _imagePaths.map((path) {
              int index = _imagePaths.indexOf(path);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: 
                  _currentIndex == index
                      ? BoxShape.circle
                      : BoxShape.circle,
                  color: _currentIndex == index
                      ? Color(0xff29788E)
                      : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
