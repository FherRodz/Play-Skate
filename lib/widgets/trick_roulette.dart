import 'package:flutter/material.dart';
import 'dart:math';

class TrickRoulette extends StatefulWidget {
  TrickRoulette({Key? key}) : super(key: key);


  @override
  State<TrickRoulette> createState() => _TrickRouletteState();
}

class _TrickRouletteState extends State<TrickRoulette> {

  List<String> tricklist = ['Ollie', 'Kickflip', 'Manual', 'Nose Manual', 'Shuv-it'];

  String _prevTrick = '';
  String _trick = '';
  String _nextTrick = '';

  void _randomTrick(){
    final random = Random();
    var index = random.nextInt(tricklist.length);
    if(index == tricklist.length-1){
      setState(() {
        _trick = tricklist[index];
        _prevTrick = tricklist[index-1];
        _nextTrick = tricklist[0];
      });
    }
    else if(index == 0){
      setState(() {
        _trick = tricklist[index];
        _prevTrick = tricklist[tricklist.length-1];
        _nextTrick = tricklist[index+1];
      });
    }
    else{
      setState(() {
        _trick = tricklist[index];
        _prevTrick = tricklist[index-1];
        _nextTrick = tricklist[index+1];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: width,
            height: height*.4,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(_prevTrick,
                  style: const TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 28,
                    color: Color.fromRGBO(0, 0, 0, .7)
                  ),
                ),
                Text(_trick,
                  style: const TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 40,
                      color: Colors.red,
                      decoration: TextDecoration.underline
                  ),
                ),
                Text(_nextTrick,
                  style: const TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 28,
                      color: Color.fromRGBO(0, 0, 0, .7)
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ElevatedButton(
                  onPressed: (){
                    _randomTrick();
                  },
                  child: const Text('Get Trick'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      textStyle: const TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 24
                      )
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
