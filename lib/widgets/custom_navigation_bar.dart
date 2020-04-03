import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:piggyvestclone/pages/savings_page.dart';
import 'package:piggyvestclone/widgets/bottom_navigation_item.dart';
//import 'flutter_ic';

class CustomNavigationBar extends StatefulWidget {
  final int index;
  final ValueChanged<int> onTap;

  CustomNavigationBar({Key key, this.index, this.onTap});

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    int _itemIndex = widget.index == null ? 0 : widget.index;
    return Stack(
        alignment: Alignment.center,
        children: [
      Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.white),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNavigationItem(
              icon: Icons.home,
              index: 0,
              text: 'Home',
              currentIndex: _itemIndex,
              onTap: () {
                setState(() {
                  _itemIndex = 0;
                  widget.onTap(_itemIndex);
                });
              },
            ),
            BottomNavigationItem(
              icon: Icons.wifi_tethering,
              index: 1,
              text: 'Savings',
              currentIndex: _itemIndex,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => SavingsPage()));
                _itemIndex = 1;
                widget.onTap(_itemIndex);
              },
            ),
            BottomNavigationItem(
              icon: FontAwesome.rocket,
              index: 2,
              text: 'Invest',
              currentIndex: _itemIndex,
              onTap: () {
                _itemIndex = 2;
                widget.onTap(_itemIndex);
              },
            ),
            BottomNavigationItem(
              icon: MaterialCommunityIcons.account,
              index: 3,
              text: 'Account',
              currentIndex: _itemIndex,
              onTap: () {
                _itemIndex = 3;
                widget.onTap(_itemIndex);
              },
            )
          ],
        ),
      ),
    ]);
  }
}
