import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:piggyvestclone/widgets/savings_card.dart';

class SavingsPage extends StatefulWidget {
  @override
  SavingsPageState createState() => SavingsPageState();
}

class SavingsPageState extends State<SavingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Savings",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "N100.0",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      height: 150,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)))),
                  SizedBox(
                    height: 20,
                  ),
                  Table(
                    children: [
                      TableRow(children: [
                        SavingsCard(
                          savingsBody:
                              "Build your savings automatically. Daily, weekly or Monthly. 10% p.a.",
                          savingsType: "Piggybank",
                          color: Colors.blue[700],
                          backgroundColor: Colors.blue[100],
                          moneyText: "N100.00",
                          icon: Feather.shield,
                        ),
                        SavingsCard(
                          savingsBody:
                              "Flexible savings for emergencies. Free transfers, withdrawals etc. 10% p.a.",
                          savingsType: "Flex Naira",
                          color: Colors.pinkAccent,
                          backgroundColor: Colors.pink[50],
                          moneyText: "N0.00",
                          icon: MaterialIcons.local_movies,
                        ),
                      ]),
                      TableRow(children: [
                        SavingsCard(
                          savingsBody:
                              "Lock funds to avoid temptations. Upfront interest. Up to 13% p.a",
                          savingsType: "Safelock",
                          color: Colors.blue[500],
                          backgroundColor: Colors.blue[50],
                          moneyText: "N0.00",
                          icon: Feather.lock,
                        ),
                        SavingsCard(
                          savingsBody:
                              "Reach your unique individual savings goals.",
                          savingsType: "Targets",
                          color: Colors.green,
                          backgroundColor: Colors.greenAccent[100],
                          moneyText: "N0.00",
                          icon: Feather.target,
                        ),
                      ]),
                      TableRow(children: [
                        SavingsCard(
                          savingsBody:
                              "Save & grow your wealth in dollars. Up to 6% p.a in dollars",
                          savingsType: "Flex Dollar",
                          color: Colors.black,
                          backgroundColor: Colors.grey[200],
                          moneyText: "N0.00",
                          icon: Feather.dollar_sign,
                        ),
                        Container(
                          height: 200,
                        )
                      ])
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
