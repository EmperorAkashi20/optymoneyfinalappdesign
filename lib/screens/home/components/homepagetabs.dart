import 'package:flutter/material.dart';
import 'package:optymoney_final/constants.dart';
import 'package:optymoney_final/screens/home/other_pages/plan_for_future.dart';


// ignore: must_be_immutable
class HomePageTabs extends StatefulWidget {

  HomePageTabs(this.colorVal);
  int colorVal;

  _HomePageTabsState createState() => _HomePageTabsState();
}

class _HomePageTabsState extends State<HomePageTabs> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 5);
    _tabController.addListener(_handleTabSelection);
  }
  void _handleTabSelection() {
    setState(() {
      widget.colorVal=0xffff5722;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorWeight: 3.0,
                indicatorColor: kPrimaryColor,
                unselectedLabelColor: Colors.grey,
                onTap: (index){
                  setState(() {

                  });
                },
                tabs: <Widget>[
                  Tab(
                    child: Container(
                      child: Text(
                        'PLAN FOR FUTURE',
                        style: TextStyle( color: _tabController.index == 0
                            ?  Color( widget.colorVal)
                            : Colors.grey)
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'ITR FILING',
                        style: TextStyle( color: _tabController.index == 1
                            ?  Color( widget.colorVal)
                            : Colors.grey)
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'MUTUAL FUND EXPLORER',
                        style: TextStyle( color: _tabController.index == 2
                            ?  Color( widget.colorVal)
                            : Colors.grey)
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'MUTUAL FUNDS CATEGORIES',
                        style: TextStyle( color: _tabController.index == 3
                            ?  Color( widget.colorVal)
                            : Colors.grey)
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'INVESTMENT',
                        style: TextStyle( color: _tabController.index == 4
                            ?  Color( widget.colorVal)
                            : Colors.grey)
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            PlanForFuture(),
            Text("2"),
            Text("3"),
            Text("4"),
            Text("5"),
          ],
        ),
      ),
    );
  }
}
