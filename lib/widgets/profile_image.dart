import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        backgroundImage: AssetImage('stock_profile.jpeg'),
        radius: 30,
      ),
    );
  }
}

// height: 100,
// width: 100,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.white,
// image: DecorationImage(
// fit: BoxFit.fill,
// image: AssetImage('Title.png'),
// ),
// ),