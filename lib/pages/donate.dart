import 'package:flutter/material.dart';
import 'package:comoda/utils/bottomnav.dart';
import 'package:comoda/utils/clothcategory.dart';
import 'package:comoda/utils/plusminus.dart';
import 'package:comoda/utils/submitbutton.dart';

class Donate extends StatefulWidget {
  const Donate({super.key});

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('donate.png'),
              fit: BoxFit.contain,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Donate",
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
                  SizedBox(height: 27),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Society",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "See All",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff297c8f),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xff297c8f), width: 1),
                    ),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                        Image(
                          image: AssetImage('childrensociety.png'),
                          fit: BoxFit.contain,
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The Children’s Society",
                              style: TextStyle(
                                color: Color(0xff090909),
                                fontSize: 15,
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Sleman, Yogyakarta",
                              style: TextStyle(
                                color: Color(0xff575757),
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17),
                  Row(
                    children: [
                      Text(
                        "Type of Cloth",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 18,
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
                        "Add Photo",
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('addphoto.png'),
                      SizedBox(width: 19),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(
                              color: Color.fromARGB(255, 125, 124, 124),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 7),
                          PlusMinusButton(),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SubmitButton(),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Confirmation will be notified later.",
                        style: TextStyle(
                          color: Color(0xff575757),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedBottomNavigationBar(),
    );
  }
}
