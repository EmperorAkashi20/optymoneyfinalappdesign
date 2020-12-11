import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:optymoney_final/constants.dart';
import 'package:optymoney_final/screens/home/components/calculator_buttons.dart';

import 'icon_button_with_counter.dart';

class HomePage extends StatefulWidget {
  final Widget child;
  HomePage({Key key, this.child}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

// ignore: non_constant_identifier_names
Color PrimaryColor = Color(0xff109618);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: new AppBar(
          title: Align(
            alignment: Alignment.topRight,
              child: IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                numOfitem: 5,
                press: () => {},
              ),
          ),
          elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: kPrimaryColor,
            indicatorWeight: 3.0,
            onTap: (index){
              setState(() {
                switch (index) {
                  case 0:
                    PrimaryColor= Color(0xffff5722);
                    break;
                  case 1:
                    PrimaryColor= Color(0xff3f51b5);
                    break;
                  case 2:
                    PrimaryColor= Color(0xffe91e63);
                    break;
                  case 3:
                    PrimaryColor= Color(0xff9c27b0);
                    break;
                  case 4:
                    PrimaryColor= Color(0xff2196f3);
                    break;
                  default:
                }
              });
            },
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text(
                    'HOME',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'CALCULATORS',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'QUICK LINKS',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'EXPLORE',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Rishabh Sethia"),
                accountEmail: new Text('work.rishabhsethia@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                    backgroundColor: Colors.tealAccent,
                    child: new Text("R")
                ),
              ),
              new ListTile(
                title: new Text("Home", style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w400
                ),),
                leading: new Icon(Icons.home_outlined),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/b");
                },
              ),
              new Divider(),
              new ListTile(
                title: new Text("Products", style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w400
                ),),
                leading: new Icon(Icons.shopping_bag_outlined),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/a");
                },
              ),
              new Divider(),
              new ListTile(
                title: new Text("Services", style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w400
                ),),
                leading: new Icon(Icons.home_repair_service_outlined),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/d");
                },
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.phone_callback_outlined),
                title: new Text("Contact Us", style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w400
                ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/c");
                },
              ),
              new Divider(),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text("ABC"),
            CalculatorButtons(),
            Text("ABC"),
            Text("ABC"),
          ],
        ),
      ),
    );
  }
}
