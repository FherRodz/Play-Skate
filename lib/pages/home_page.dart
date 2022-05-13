import 'package:flutter/material.dart';
import '/widgets/trick_list_box.dart';
import '/widgets/footer_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _isTricks = true;

  void onTricksChanged(){
    setState(() {
      _isTricks = !_isTricks;
    });
    _isTricks ? print('The tricks list is visible') : print('The tricks list is NOT visible');
  }

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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('img/Title.png'),
              ],
            ),
            Visibility(
              child: TrickListBox(),    //TODO: ADD SHOW/HIDE ANIMATION
              visible: _isTricks,
              maintainState: true,
            ),
            FooterMenu(onTricksChanged: onTricksChanged,),
          ],
        ),
      )
    );
  }
}
