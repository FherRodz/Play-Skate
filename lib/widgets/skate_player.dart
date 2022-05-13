import 'package:flutter/material.dart';
import '/widgets/skate_counter.dart';

class SkatePlayer extends StatelessWidget {
  // const SkatePlayer({Key? key, this._title}) : super(key: key);

  final String title;

  const SkatePlayer(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,
          style: const TextStyle(
              fontFamily: 'Oswald',
              fontSize: 18,
            color: Colors.white
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SkateCounter(),
        ],
      ),
    );
  }
}
