import 'package:flutter/material.dart';
import 'package:proditasmartnursing/dashboard/components/droprate.dart';
import 'package:proditasmartnursing/dashboard/components/spacebar.dart';
import 'package:proditasmartnursing/dashboard/components/timeover.dart';
import 'package:proditasmartnursing/navdrawer/navdrawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // drawer: Theme(
      //   data: Theme.of(context).copyWith(canvasColor: Color(0xff2A2A2A)),
      //   child: NavDrawer(),
      // ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                expandedHeight: 280.0,
                floating: true,
                pinned: true,
                snap: false,
                elevation: 50,
                backgroundColor: Color(0xFF473E97),
                flexibleSpace: Spacebar(),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(100.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF473E97),
                      border: Border(
                        top: BorderSide(
                          color: Color(0xFF7A77B0),
                        ),
                      ),
                    ),
                    child: TabBar(
                      indicatorColor: Color(0xFFFF4C58),
                      tabs: [
                        Tab(
                          text: "DROP RATE",
                        ),
                        Tab(
                          text: "TIME OVER",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              DropRate(),
              TimeOver(),
            ],
          ),
        ),
      ),
    );
  }
}
