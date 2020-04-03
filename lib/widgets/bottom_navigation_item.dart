import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final text;
  final int index;
  final IconData icon;
  final int currentIndex;
  final GestureTapCallback onTap;

  BottomNavigationItem(
      {this.index, this.icon, this.text, this.currentIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: index == currentIndex ? Colors.blueAccent : Colors.grey,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle),
            )
          ],
        ),
      ),
    );
  }
}
