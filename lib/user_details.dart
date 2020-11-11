import 'package:basic_flutter_intern1/theme/colors/light_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: LightColors.kDarkYellow,
      child: Container(
        height: 300.0,
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.cancel_outlined),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        color: LightColors.kLightYellow,
                        iconSize: 30,
                      ),
                    ],
                  ),
                  Text(
                    'My Profile',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text(
                        '+91 XXXXX XXXXX',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text(
                        'eamil@gmail.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text(
                        'address aaaabbbbbcccc asnndnx, xnnnfjc, aapasma, aadjjdbcv',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}
