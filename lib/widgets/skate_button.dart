import 'package:flutter/material.dart';

class SkateButton extends StatelessWidget {
  // const SkateButton({Key? key}) : super(key: key);

  final String _data;
  final String _route;

  SkateButton(this._data, this._route);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          print('move to route: ' + _route);
        },
        child: Text(_data),
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(26, 23, 28, 1.0),
          onPrimary: Colors.red,
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
    );
  }
}
