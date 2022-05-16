import 'package:flutter/material.dart';
import 'package:play_skate/pages/signIn_page.dart';
import '/widgets/skate_button.dart';
import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(26, 23, 28, 1.0),
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 40, 0, 0),  //In case you want some margin
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('img/Title.png'),
                ],
              ),
              Image.asset('img/splash_image.png'),
              ElevatedButton(
                  onPressed: (){
                    print('start');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Text('START'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Oswald',
                    fontSize: 28
                  ),
                ),
              ),
              TextButton(
                  onPressed: (){
                    print('sign-in/register');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: Text('Sign-in/Register'),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        )
    );
  }
}
