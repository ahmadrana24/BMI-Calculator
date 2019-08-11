import 'package:flutter/material.dart';
import 'Constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KbuttonText,
          ),
        ),
        padding: EdgeInsets.all(20),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 7),
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
