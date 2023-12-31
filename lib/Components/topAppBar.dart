import 'package:blue_crew/constants.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String text;
  final Color color;
  final Color iconColor;
  const TopBar({required this.text,required this.color,required this.iconColor,super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return AppBar(
      iconTheme: IconThemeData(
        color: iconColor,
        size: mediaQuery.size.height*0.03,
      ),
      backgroundColor: kBrown,
      centerTitle: true,
      title: Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: 'ObjectSans',
          fontSize: mediaQuery.size.height*0.045,
        ),
      ),
    );
  }
}
