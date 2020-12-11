import 'package:flutter/material.dart';
import 'package:optymoney_final/constants.dart';


class HomePageTabs extends StatefulWidget {
  final Widget child;
  HomePageTabs({Key key, this.child}) : super(key: key);
  _HomePageTabsState createState() => _HomePageTabsState();
}

// ignore: non_constant_identifier_names
Color PrimaryColor =  Color(0xff109618);

class _HomePageTabsState extends State<HomePageTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Color(0xff109618),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Padding(
            padding: EdgeInsets.only(top: 8.0),
          ),
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
      ),
    );
  }
}