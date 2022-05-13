import 'package:flutter/material.dart';
import '/widgets/skate_player.dart';
import '/widgets/trick_roulette.dart';

class SkatePage extends StatelessWidget {
  const SkatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(26, 23, 28, 1.0),
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 0),  //In case you want some margin
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text('Back'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      textStyle: const TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 16
                      ),
                    ),
                  ),
                  Image.asset('img/Title.png'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SkatePlayer('Player 1'),
                  SkatePlayer('Player 2'),
                ],
              ),
              TrickRoulette(),
            ],
          ),
        )
    );
  }
}



