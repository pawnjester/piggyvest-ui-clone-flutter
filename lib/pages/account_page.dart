import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:piggyvestclone/widgets/account_card.dart';
import 'package:piggyvestclone/widgets/toggle_button.dart';

class AccountPage extends StatefulWidget {
  @override
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "My Account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Text(
                    "Okonji Emmanuel",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 150,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Join the super savers of 2020",
                              style: TextStyle(
                                  fontSize: 15,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Enable Finger Print/Face ID",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ToggleButton()
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Show Dashboard Account Balance",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      ToggleButton()
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Enable Dark Mode",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      ToggleButton()
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Table(
                    children: [
                      TableRow(children: [
                        Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Get Flex Number"),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Add BVN",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black12),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)))),
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text("Piggy Points"),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text("25",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black12),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))))
                      ])
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AccountCard(
                    icon: Feather.user,
                    text: "My Account Settings",
                  ),
                  AccountCard(
                    icon: Feather.paperclip,
                    text: "Self Help",
                  ),
                  AccountCard(
                    icon: Feather.lock,
                    text: "Add Your BVN",
                  ),
                  AccountCard(
                    icon: AntDesign.sharealt,
                    text: "Refer & Earn N1000000",
                  ),
                  AccountCard(
                    icon: Feather.dollar_sign,
                    text: "Withdraw Funds",
                  ),
                  AccountCard(
                    icon: Feather.credit_card,
                    text: "My Card & Bank Settings",
                  ),
                  AccountCard(
                    icon: Feather.book,
                    text: "View Piggyvest Library",
                  ),
                  AccountCard(
                    icon: Feather.phone,
                    text: "Contact Us",
                  ),
                  AccountCard(
                    icon: Feather.log_out,
                    text: "Log out",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
