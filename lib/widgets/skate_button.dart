import 'package:flutter/material.dart';

class SkateButton extends StatelessWidget {
  // const SkateButton({Key? key}) : super(key: key);

  final String _data;
  final VoidCallback _onPress;

  SkateButton(this._data, this._onPress);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _onPress,
        child: Text(_data),
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(26, 23, 28, 1.0),
          onPrimary: Colors.white,
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
    );
  }
}
