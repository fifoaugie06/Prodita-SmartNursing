import 'package:flutter/material.dart';
import 'package:proditasmartnursing/dashboard/components/spacebar.dart';
import 'package:proditasmartnursing/dashboard/feature/drugsdosage.dart';
import 'package:proditasmartnursing/dashboard/feature/intravenous.dart';
import 'package:proditasmartnursing/dashboard/feature/needsoffluids.dart';
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
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Color(0xff2A2A2A)),
        child: NavDrawer(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.sort),
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
            expandedHeight: 280.0,
            floating: true,
            pinned: true,
            snap: false,
            elevation: 50,
            backgroundColor: Color(0xFF473E97),
            flexibleSpace: Spacebar(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 32, bottom: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Calculate',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: <Widget>[
                      DrugsDosage(),
                      SizedBox(
                        width: 8,
                      ),
                      NeedsOfFluids(),
                    ],
                  ),
                  Intravenous(),
                  Container(
                    width: 100,
                    height: 1000,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
