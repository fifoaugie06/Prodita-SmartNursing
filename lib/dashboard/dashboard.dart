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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 230,
            color: Colors.red,
          ),
          Spacebar(),
        ],
      ),
    );
  }
}
