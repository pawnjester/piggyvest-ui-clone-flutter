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
        height: 80,
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              index == currentIndex ? Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: index == currentIndex ? Colors.blueAccent : Colors.grey,
                    shape: BoxShape.circle),
              ): Container(
                height: 8,
                width: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
