import 'package:flutter/material.dart';
import 'package:play_skate/widgets/profile_image.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height*.12,
      width: width*.70,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(65, 61, 67, 1),
        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))
      ),
      child: Row(
        children: [
          //ProfileImage(),
          Container(
              child: const Icon(Icons.person_outline_rounded,
              size: 70,
              color: Colors.white,
              ),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 4
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Fher12',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 34,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
