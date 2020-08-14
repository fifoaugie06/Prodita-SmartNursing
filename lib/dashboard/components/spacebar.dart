import 'package:flutter/material.dart';

class Spacebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      background: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 70.0),
              child: Text(
                'Smart Nursing',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
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
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Text(
                'Prodita Smart Nursing merupakan aplikasi yang didesain untuk bla '
                'bla bla bla bla bla bla bla bla bla bla bla bla bla bla '
                'bla bla bla bla bla bla bla bla bla',
                style: TextStyle(color: Color(0xFF7A77B0), fontSize: 14),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  onPressed: () {},
                  color: Color(0xFFFF4C58),
                  textColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      "Good Morning",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
