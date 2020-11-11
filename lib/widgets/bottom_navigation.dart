import 'package:basic_flutter_intern1/theme/colors/light_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  static int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      onTap: (index) {
        setState(() {
          if (currentIndex != index) {
            currentIndex = index;
            if (currentIndex == 0) {
              Navigator.popAndPushNamed(context, '/notes');
            } else if (currentIndex == 1) {
              Navigator.popAndPushNamed(context, '/home');
            } else if (currentIndex == 2) {
              Navigator.popAndPushNamed(context, '/payments');
            }
          }
        });
      },
      buttonBackgroundColor: LightColors.kDarkYellow,
      color: LightColors.kDarkYellow,
      backgroundColor: Colors.white,
      items: [
        Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(
            Icons.notes_rounded,
            size: 30.0,
          ),
          Text(
            'Notes',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ]),
        Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(
            Icons.home,
            size: 30.0,
          ),
          Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ]),
        Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(
            Icons.payment_rounded,
            size: 30.0,
          ),
          Text(
            'Pay',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ]),
      ],
    );
  }
}
