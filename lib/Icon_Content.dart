import 'package:flutter/material.dart';
import 'Constants.dart';

class IconContent extends StatelessWidget {
  final label;
  final IconData icon;
  IconContent({this.label, this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style :labelTextStyle
        )
      ],
    );
  }
}
