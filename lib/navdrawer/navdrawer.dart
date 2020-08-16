import 'dart:io';

import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage('assets/images/share.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'SHARE',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Lorem ipsum dolor sit \namet, constetur',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage('assets/images/tentang.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'TENTANG APLIKASI',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Lorem ipsum dolor sit \namet, constetur',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            color: Color(0xFFFF4C58),
            child: ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: Text(
                'KELUAR',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Konfirmasi"),
                        content:
                            new Text("Anda yakin akan keluar dari aplikasi ?"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text(
                              "CANCEL",
                              style: TextStyle(color: Color(0xFFFF4C58)),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          new FlatButton(
                            child: new Text("ACCEPT"),
                            onPressed: () {
                              exit(0);
                            },
                          ),
                        ],
                      );
                    });
              },
            ),
          ),
          SizedBox(
            height: 180,
          ),
          Text(
            'Copyright \u00a9 2020\n Prodita - Smart Nursing\nAuthor\'s Faftech',
            style: TextStyle(
                color: Colors.white70, letterSpacing: 1.5, height: 1.5),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
