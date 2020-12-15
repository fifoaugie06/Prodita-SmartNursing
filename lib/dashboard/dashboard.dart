import 'package:flutter/material.dart';
import 'package:proditasmartnursing/dashboard/components/droprate.dart';
import 'package:proditasmartnursing/dashboard/components/timeover.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xFF473E97),
            height: 210,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Smart Nursing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22.0),
                  child: Text(
                    'Keep healthy and have a nice day!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12.0),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      'Prodita Smart Nursing merupakan aplikasi yang didesain untuk '
                      'membantu dalam perhitungan jumlah tetesan infus per menit.',
                      style: TextStyle(
                        color: Color(0xFF7A77B0),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                )
              ],
            ),
          ),
          Container(
            color: Color(0xFF473E97),
            child: TabBar(
              indicatorColor: Colors.red,
              controller: _controller,
              tabs: [
                Tab(
                  text: 'Drop Rate',
                ),
                Tab(
                  text: 'Time Over',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: [
                DropRate(),
                TimeOver(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
