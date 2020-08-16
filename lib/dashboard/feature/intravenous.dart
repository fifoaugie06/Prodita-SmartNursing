import 'package:flutter/material.dart';

class Intravenous extends StatefulWidget {
  @override
  _IntravenousState createState() => _IntravenousState();
}

class _IntravenousState extends State<Intravenous> {
  List<Color> _colors = [Color(0xFFA8A0E3), Color(0xFF56539E)];
  List<double> _stops = [0.0, 0.7];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 155,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      colors: _colors, stops: _stops),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage('assets/images/nurse.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                alignment: Alignment.bottomCenter,
              ),
              Expanded(
                child: Align(
                  child: Container(
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Intravenous Formula',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
