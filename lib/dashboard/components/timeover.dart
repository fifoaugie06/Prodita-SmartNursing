import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class TimeOver extends StatefulWidget {
  @override
  _TimeOverState createState() => _TimeOverState();
}

class _TimeOverState extends State<TimeOver> {
  int _value = 1;
  double _result = 0;
  final _fluidController = TextEditingController();
  final _dropRateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 32, right: 32, top: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: _fluidController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Fluid Volume',
                  suffixText: 'ml',
                ),
              ),
              SizedBox(
                height: 22,
              ),
              TextFormField(
                controller: _dropRateController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Drop Rate',
                  suffixText: 'dpm',
                ),
              ),
              SizedBox(
                height: 22,
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                ),
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "Drop Factor",
                    ),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "Otsuka 15dpm",
                    ),
                    value: 15,
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "Terumo 20dpm",
                    ),
                    value: 20,
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "Micro 60dpm",
                    ),
                    value: 60,
                  ),
                ],
                onChanged: (value) {
                  setState(
                    () {
                      _value = value;
                    },
                  );
                },
              ),
              SizedBox(
                height: 22,
              ),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: RaisedButton(
                  color: Color(0xFFFF4C58),
                  elevation: 0,
                  onPressed: () {
                    if (_value == 1 ||
                        _fluidController.text.length == 0 ||
                        _dropRateController.text.length == 0) {
                      Toast.show("Pastikan Semua Terisi", context,
                          duration: Toast.LENGTH_LONG);
                    } else {
                      setState(() {
                        _result = calculate();
                      });
                    }
                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Visibility(
                visible: _result == 0 ? false : true,
                child: Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green[200],
                  ),
                  child: Center(
                    child: Text(
                      _result.toStringAsFixed(0) + " Jam",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calculate() {
    double result = (double.parse(_fluidController.text) * _value.toDouble()) /
        double.parse(_dropRateController.text);
    result = result / 60;

    return result;
  }
}
