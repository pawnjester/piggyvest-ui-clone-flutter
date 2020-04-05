import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ToggleButton extends StatefulWidget {
  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool toggleValue = false;
  final duration = Duration(milliseconds: 500);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      height: 40,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: toggleValue ? Colors.green[500] : Colors.grey[300]),
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: duration,
//            curve: Curves.easeIn,
            top: 3,
            left: toggleValue ? 40 : 0,
            right: toggleValue ? 0 : 50,
            child: InkWell(
              onTap: toggleButton,
              child: AnimatedSwitcher(
                duration: duration,
//                transitionBuilder: (Widget child, Animation<double> animation) {
//                  return RotationTransition(
//                    child: child,
//                    turns: animation,
//                  );
//                },
                child: toggleValue
                    ? Icon(
                        Feather.circle,
                        key: UniqueKey(),
                        color: Colors.white,
                        size: 35,
                      )
                    : Icon(
                        Feather.circle,
                        key: UniqueKey(),
                        color: Colors.white,
                        size: 35,
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
