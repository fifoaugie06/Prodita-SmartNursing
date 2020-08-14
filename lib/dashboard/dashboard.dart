import 'package:flutter/material.dart';
import 'package:proditasmartnursing/dashboard/components/spacebar.dart';
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
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              _buildList(50),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'Item ${i.toString()}',
          style: TextStyle(fontSize: 25.0),
        ),
      ));
    }
    return listItems;
  }
}
