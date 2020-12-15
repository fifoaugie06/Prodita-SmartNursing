import 'package:flutter/material.dart';

class Spacebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
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
    );
  }
}
