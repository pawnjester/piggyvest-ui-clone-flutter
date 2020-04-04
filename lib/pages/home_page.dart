import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:piggyvestclone/pages/savings_page.dart';
import 'package:piggyvestclone/widgets/custom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Okonji,",
                          style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Good morning,",
                          style:
                          TextStyle(fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Feather.shield,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Total Savings",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "N0.00",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Feather.shield,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Total Investments",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "N58,500.00",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.purple[800],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Feather.dollar_sign,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Flex Dollar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "\$${0.00}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: 350,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                MaterialIcons.local_movies,
                                color: Colors.pinkAccent,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Flex Naira",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "\$${0.00}",
                                    style: TextStyle(
                                        color: Colors.pinkAccent,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  "INVESTMENT OPPORTUNITY",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xFFB5ADAC),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "TO-DO LIST",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "- REFRESH",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Feather.circle,
                            color: Colors.blue[700],
                          ),
                          SizedBox(width: 10),
                          Text("Tell us more about yourself",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Feather.circle,
                              color: Colors.blue[700],
                            ),
                            SizedBox(width: 10),
                            Text("Turn on your PiggyBank AutoSave",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Feather.circle,
                              color: Colors.blue[700],
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Safelock 50000 for 61 - 90 days",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Feather.gift,
                                size: 30, color: Colors.blue[800]),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                      "Get Piggybank Savings Interest for February!",
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    "Tap to earn interest on your Piggybank Savings for February",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent.shade700),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Feather.thumbs_up,
                                size: 30, color: Colors.blue[800]),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("See your recent activities",
                                      style: TextStyle(
                                          color: Colors.blue[700],
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                      "See your most recent activities on PiggyVest",
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent.shade400),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Feather.lock,
                                size: 30, color: Colors.blue[200]),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Create a Safelock",
                                    style: TextStyle(
                                        color: Colors.blue[200],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      "Avoid spending temptations. Tap to create a Safelock",
                                      style: TextStyle(fontSize: 12))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent.shade200),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    )
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: CustomNavigationBar(
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
