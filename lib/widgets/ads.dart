import 'package:basic_flutter_intern1/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

class AdsWidgets extends StatelessWidget {

  final String url;
  final String heading;
  final String subheading;
  final k;

  AdsWidgets({this.url, this.heading, this.subheading, this.k});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: (k%2==0)?LightColors.kRed: LightColors.kBlue,
        width: 170.0,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            color:(k%2==0)?LightColors.kRed: LightColors.kBlue,
            elevation: 0,
            child: Wrap(
              children: [
                Center(child: Container(child: Image.network(url,), height: 175.0,)),
                ListTile(
                  title: Text(heading),
                  subtitle: Text(subheading),
                )
              ],
            ),
          ),
        )
    );
  }
}
