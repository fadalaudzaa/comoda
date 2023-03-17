import 'package:flutter/material.dart';
import 'package:comoda/utils/bottomnav.dart';
import 'package:comoda/utils/clothcategory.dart';
import 'package:comoda/utils/dropdown.dart';

class Recycle extends StatefulWidget {
  const Recycle({super.key});

  @override
  State<Recycle> createState() => _RecycleState();
}

final List<String> items = [
  'Stradivarius',
  'H&M',
  'Uniqlo',
  'Under Armour',
  'Ralph Lauren',
];

String? selectedValue;

class _RecycleState extends State<Recycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'recycle.png',
              fit: BoxFit.contain,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 5, 25, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Recycle",
                        style: TextStyle(
                          color: Color(0xff090909),
                          fontSize: 32,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Image.asset('location.png'),
                      SizedBox(width: 5),
                      Text(
                        "Sleman, Yogyakarta",
                        style: TextStyle(
                          color: Color(0xff297c8f),
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Type of Cloth",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  ClothingCategories(),
                  SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Brand",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  CustomDropdownButton2(
                      hint: 'Select Brands',
                      value: selectedValue,
                      dropdownItems: items,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      }),
                  SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Related Merchants",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Show All",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff29788e),
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          print('women fashion');
                        },
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage('womenfashion.png'),
                                width: 70),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                            Text(
                              "Women\nFashion",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff090909),
                                fontSize: 13.90,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('little dreamers');
                        },
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage('littledreamers.png'),
                                width: 70),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                            Text(
                              "Little\nDreamers",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff090909),
                                fontSize: 13.90,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('your angel');
                        },
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage('yourangel.png'), width: 70),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                            Text(
                              "Your\nAngel",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff090909),
                                fontSize: 13.90,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("anne's boutique");
                        },
                        child: Column(
                          children: [
                            Image(
                                image: AssetImage('annesboutique.png'),
                                width: 70),
                            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                            Text(
                              "Anne's\nBoutique",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff090909),
                                fontSize: 13.90,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Related Stores",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('astraamplaz.png', width: 170),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: CurvedBottomNavigationBar(),
    );
  }
}
