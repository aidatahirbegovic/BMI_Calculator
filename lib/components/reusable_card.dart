import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.col, this.cardWidget, this.onPress});

  final Color col;
  final Widget cardWidget;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardWidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
