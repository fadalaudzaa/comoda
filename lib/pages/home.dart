import 'package:flutter/material.dart';
import 'package:comoda/utils/bottomnav.dart';
import 'package:comoda/utils/carousel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(27, 59, 27, 0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      print("profile");
                    },
                    child: Image(
                      image: AssetImage('memoji.png'),
                      width: 70,
                    ),
                  ),
                  SizedBox(width: 12),
                  Row(
                    children: [
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nicki Minaj",
                                style: TextStyle(
                                  color: Color(0xff393939),
                                  fontSize: 20,
                                  fontFamily: "DM Sans",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Sleman, Yogyakarta",
                                style: TextStyle(
                                  color: Color(0xff8e8e8e),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 73),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              print("notification button");
                            },
                            child: Icon(
                              Icons.notifications_none_outlined,
                              size: 34,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            Center(
              child: CarouselSliderWidget(),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(27, 27, 27, 0),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Top Merchants",
                        style: TextStyle(
                          color: Color(0xff090909),
                          fontSize: 23,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          print("Show All Merchants");
                        },
                        child: Text(
                          "Show All",
                          style: TextStyle(
                            color: Color(0xff29788e),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    print('women fashion');
                  },
                  child: Column(
                    children: [
                      Image(image: AssetImage('womenfashion.png'), width: 70),
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
                      Image(image: AssetImage('littledreamers.png'), width: 70),
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
                      Image(image: AssetImage('yourangel.png'), width: 70),
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
                      Image(image: AssetImage('annesboutique.png'), width: 70),
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
            Container(
              padding: EdgeInsets.fromLTRB(27, 27, 27, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The More You Know",
                    style: TextStyle(
                      color: Color(0xff090909),
                      fontSize: 23,
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    print("facts");
                  },
                  child: Image(
                    image: AssetImage('facts.png'),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(27, 9, 27, 10),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Text(
                        "Stores For You",
                        style: TextStyle(
                          color: Color(0xff090909),
                          fontSize: 23,
                          fontFamily: "DM Sans",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          print("Show All Stores");
                        },
                        child: Text(
                          "Show All",
                          style: TextStyle(
                            color: Color(0xff29788e),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(27, 0, 27, 0),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            print("ralph lauren");
                          },
                          child: Image(
                            image: AssetImage('ralph.png'),
                            width: 150,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("hm");
                          },
                          child: Image(
                            image: AssetImage('hm.png'),
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {
                              print("uniqlo");
                            },
                            child: Image(
                                image: AssetImage('uniqlo.png'), width: 150)),
                        InkWell(
                          onTap: () {
                            print("under armour");
                          },
                          child: Image(
                            image: AssetImage('ua.png'),
                            width: 150,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: CurvedBottomNavigationBar()
    );
  }
}
