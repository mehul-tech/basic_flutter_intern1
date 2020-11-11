import 'package:basic_flutter_intern1/theme/colors/light_colors.dart';
import 'package:basic_flutter_intern1/user_details.dart';
import 'package:basic_flutter_intern1/widgets/bottom_navigation.dart';
import 'package:basic_flutter_intern1/widgets/home_page_contents.dart';
import 'package:basic_flutter_intern1/widgets/right_navigation.dart';
import 'package:basic_flutter_intern1/widgets/top_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  VoidCallback _showUserDetails;

  @override
  void initState() {
    super.initState();
    _showUserDetails = _showBottomSheet;
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return UserDetails();
        });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: LightColors.kDarkYellow,
        elevation: 0,
      ),
      drawer: RightNavigation(),
      body: Container(
        child: Column(
          children: [
            TopContainer(
              height: 150,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircularPercentIndicator(
                          radius: 90.0,
                          lineWidth: 5.0,
                          animation: true,
                          percent: 0,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: LightColors.kRed,
                          backgroundColor: LightColors.kDarkYellow,
                          center: CircleAvatar(
                            backgroundColor: LightColors.kBlue,
                            radius: 45.0,
                            // backgroundImage: AssetImage(
                            //   'assets/images/avatar.png',
                            // ),
                            child: Text(
                              'U',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'User name',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: LightColors.kDarkBlue,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '+91 XXXXX XXXXX',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_drop_down_circle_outlined),
                          onPressed: _showUserDetails,
                          color: LightColors.kLightYellow,
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ]),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: HomePageContents(),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}
