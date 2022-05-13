import 'package:flutter/material.dart';

class SkateCounter extends StatefulWidget {
  const SkateCounter({Key? key}) : super(key: key);

  @override
  State<SkateCounter> createState() => _SkateCounterState();
}

class _SkateCounterState extends State<SkateCounter> {
  Color _sColor = Colors.white;
  Color _kColor = Colors.white;
  Color _aColor = Colors.white;
  Color _tColor = Colors.white;
  Color _eColor = Colors.white;

  int counter = 0;

  void _fillLetter() {
    if (counter == 0){
      setState(() {
        _sColor = Colors.red;
      });
      counter ++;
    }
    else if (counter == 1){
      setState(() {
        _kColor = Colors.red;
      });
      counter ++;
    }
    else if (counter == 2){
      setState(() {
        _aColor = Colors.red;
      });
      counter ++;
    }
    else if (counter == 3){
      setState(() {
        _tColor = Colors.red;
      });
      counter ++;
    }
    else if (counter == 4){
      setState(() {
        _eColor = Colors.red;
      });
      counter ++;
    }
    else{
      _whiteLetters();
      counter = 0;
    }
  }

  void _whiteLetters() {
    setState(() {
      _sColor = Colors.white;
      _kColor = Colors.white;
      _aColor = Colors.white;
      _tColor = Colors.white;
      _eColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _fillLetter,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Text('S.',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 30,
                color: _sColor
              ),
            ),
            Text('K.',
              style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30,
                  color: _kColor
              ),
            ),
            Text('A.',
              style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30,
                  color: _aColor
              ),
            ),
            Text('T.',
              style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 30,
                  color: _tColor
              ),
            ),
            Text('E.',style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 30,
                color: _eColor
              ),
            ),
          ],
        ),
      ),
    );
  }
}
