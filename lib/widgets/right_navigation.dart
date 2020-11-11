import 'package:basic_flutter_intern1/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

class RightNavigation extends StatefulWidget {
  @override
  _RightNavigationState createState() => _RightNavigationState();
}

class _RightNavigationState extends State<RightNavigation> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('User Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
            accountEmail: Text('+91 XXXXX XXXXX', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),),
            decoration: BoxDecoration(
              color: LightColors.kDarkYellow,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: LightColors.kDarkBlue,
              child: Text('U', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
          ),
          // ListTile(trailing: IconButton(icon: Icon(Icons.calendar_today), onPressed: (){},) ,title: TextButton(child: Text('Calendar'), style: TextStyle(fontSize: 15), )),
          // ListTile(trailing: Icon(Icons.headset_mic) ,title: Text('Help and Support', style: TextStyle(fontSize: 15),)),
          // ListTile(trailing: Icon(Icons.settings) ,title: Text('Setting', style: TextStyle(fontSize: 15),)),
          // ListTile(trailing: Icon(Icons.help_outline_sharp) ,title: Text('Help and Support', style: TextStyle(fontSize: 15),)),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton.icon(
                  icon: Icon(Icons.calendar_today, color: LightColors.kDarkBlue,),
                  onPressed: (){},
                  label: Text('Calender                                 '),
                ),
              ],
            ),
            trailing: Icon(Icons.chevron_right),
          ),

          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton.icon(
                  icon: Icon(Icons.headset_mic_outlined, color: LightColors.kDarkBlue,),
                  onPressed: (){},
                  label: Text('Help and Support                 '),
                ),
              ],
            ),
            trailing: Icon(Icons.chevron_right),
          ),

          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton.icon(
                  icon: Icon(Icons.settings, color: LightColors.kDarkBlue,),
                  onPressed: (){},
                  label: Text('Setting                                  '),
                ),
              ],
            ),
            trailing: Icon(Icons.chevron_right),
          ),

          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton.icon(
                  icon: Icon(Icons.more_horiz, color: LightColors.kDarkBlue,),
                  onPressed: (){},
                  label: Text('More                                     '),
                ),
              ],
            ),
            trailing: Icon(Icons.chevron_right),
          ),

          Padding(padding: EdgeInsets.only(top: 200)),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.cancel_rounded, color: LightColors.kDarkBlue,),
                onPressed: (){
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                alignment: Alignment.bottomCenter,
                iconSize: 35.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
