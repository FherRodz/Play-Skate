import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  // const ProfileButton({Key? key}) : super(key: key);

  final String _title;
  final VoidCallback _onPress;

  ProfileButton(this._title, this._onPress);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onPress,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_title,
                style: const TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 36,
                  color: Colors.black
                ),
              ),
              SizedBox(
                width: 200,
                height: 1,
                child: Container(
                  color: Colors.black45,
                ),
              )
            ],
          ),
        )
    );
  }
}

