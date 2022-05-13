import 'package:flutter/material.dart';

class ListHeading extends StatelessWidget {
  //const ListHeading({Key? key}) : super(key: key);

  final String title;

  ListHeading({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: const TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1.0),
        fontFamily: 'Oswald',
        fontSize: 20
      )
    );
  }
}