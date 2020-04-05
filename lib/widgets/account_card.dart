import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final String text;
  final IconData icon;

  AccountCard({Key key, this.icon, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              Icon(icon),
              SizedBox(
                width: 20,
              ),
              Text(text)
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))));
  }
}
