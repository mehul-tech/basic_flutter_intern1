import 'package:basic_flutter_intern1/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

class Plans extends StatelessWidget {

  final String price, offer;

  final int k;

  Plans({this.offer, this.price, this.k});


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Card(
        color: (k%2==0)?LightColors.kRed: LightColors.kBlue,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        " $offer",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
