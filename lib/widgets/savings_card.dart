import 'package:flutter/cupertino.dart';

class SavingsCard extends StatelessWidget {
  final String savingsType, savingsBody, moneyText;
  final IconData icon;
  final Color color, backgroundColor;

  const SavingsCard(
      {Key key,
      this.savingsBody,
      this.savingsType,
      this.moneyText,
      this.icon,
      this.color, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                color: color,
              ),
              SizedBox(height: 20,),
              Text(
                savingsType,
                style: TextStyle(color: color, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Text(savingsBody, style: TextStyle(fontSize: 9),),
              SizedBox(height: 25,),
              Text(
                moneyText,
                style: TextStyle(color: color, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))));
  }
}
