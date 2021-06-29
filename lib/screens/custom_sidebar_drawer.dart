// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_samples/res/custom_colors.dart';

import 'myvehicle.dart';

class CustomSidebarDrawer extends StatefulWidget {

  final Function drawerClose;

  const CustomSidebarDrawer({Key key, this.drawerClose}) : super(key: key);

  @override
  _CustomSidebarDrawerState createState() => _CustomSidebarDrawerState();
}

class _CustomSidebarDrawerState extends State<CustomSidebarDrawer> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Container(
        color: CustomColors.firebaseNavy,
        width: mediaQuery.size.width * 0.60,
        height: mediaQuery.size.height,
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 120,
                color: CustomColors.firebaseNavy,//Colors.grey.withAlpha(30)
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    CircleAvatar(
                      child: Image.asset("assets/fevi.png",
                        width: 50,
                        height: 50,),
                      /*borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset("assets/fevi.png",
                        width: 50,
                        height: 550,),*/
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("User Name")
                  ],
                )
            ),
            SizedBox(height: 12,),
            Container(
                width: double.infinity,
                height: 80,
                color: CustomColors.firebaseOrange,//Colors.grey.withAlpha(30)
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Total Expenses"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("\u{20B9}" "20,000", style: TextStyle(fontSize: 21),)
                  ],
                )
            ),

            ListTile(
              onTap: (){
                debugPrint("Tapped Profile");
              },
              leading: Icon(Icons.person),
              title: Text(
                "Your Profile",
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => myvehicle())
                );
                debugPrint("Tapped My Vehicle");
              },
              leading: Icon(Icons.directions_car_outlined),
              title: Text(
                "My Vehicle",
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: (){
                debugPrint("Tapped About Us");
              },
              leading: Icon(Icons.list),
              title: Text(
                "About Us",
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: (){
                debugPrint("Tapped Contact Us");
              },
              leading: Icon(Icons.contact_phone_outlined),
              title: Text(
                "Contact Us",
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: (){
                debugPrint("Tapped FAQs");
              },
              leading: Icon(Icons.contact_support_outlined),
              title: Text(
                "FAQs",
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                debugPrint("Tapped settings");
              },
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),

            ListTile(
              onTap: () {
                debugPrint("Tapped Log Out");
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}