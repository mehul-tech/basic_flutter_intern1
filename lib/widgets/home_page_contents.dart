import 'package:basic_flutter_intern1/theme/colors/light_colors.dart';
import 'package:basic_flutter_intern1/widgets/ads.dart';
import 'package:basic_flutter_intern1/widgets/plans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageContents extends StatefulWidget {
  @override
  _HomePageContentsState createState() => _HomePageContentsState();
}

class _HomePageContentsState extends State<HomePageContents> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'PLANS',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            color: LightColors.kLightYellow2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Plans(price: 'Rs. 700', offer: 'for 20mbps', k: 0,),
                  SizedBox(height: 15.0,),
                  Plans(price: 'Rs. 800', offer: 'for 30mbps', k: 1,),
                  SizedBox(height: 15.0,),
                  Plans(price: 'Rs. 900', offer: 'for 40mbps', k: 2,),
                  SizedBox(height: 15.0,),
                  Plans(price: 'Rs. 1000', offer: 'for 500mbps', k: 3,),
                  SizedBox(height: 15.0,),
                  Plans(price: 'Rs. 1200', offer: 'for 1000mbps', k: 4,),
                  SizedBox(height: 15.0,),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0,),

          SizedBox(
            height: 280,
            child: Container(
              color: LightColors.kLightYellow2,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(child: AdsWidgets(url: 'https://pbs.twimg.com/profile_images/775382054938800128/NQuZ8mDg.jpg', heading: 'Heading', subheading: 'Subheading', k: 0,), padding: EdgeInsets.all(5.0),),
                    Padding(child: AdsWidgets(url: 'https://pbs.twimg.com/profile_images/775382054938800128/NQuZ8mDg.jpg', heading: 'Heading', subheading: 'Subheading', k: 1), padding: EdgeInsets.all(5.0),),
                    Padding(child: AdsWidgets(url: 'https://pbs.twimg.com/profile_images/775382054938800128/NQuZ8mDg.jpg', heading: 'Heading', subheading: 'Subheading', k: 2), padding: EdgeInsets.all(5.0),),
                    Padding(child: AdsWidgets(url: 'https://pbs.twimg.com/profile_images/775382054938800128/NQuZ8mDg.jpg', heading: 'Heading', subheading: 'Subheading', k: 3), padding: EdgeInsets.all(5.0),),
                    Padding(child: AdsWidgets(url: 'https://pbs.twimg.com/profile_images/775382054938800128/NQuZ8mDg.jpg', heading: 'Heading', subheading: 'Subheading', k: 4), padding: EdgeInsets.all(5.0),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
