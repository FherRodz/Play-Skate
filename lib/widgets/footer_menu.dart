import 'package:flutter/material.dart';

class FooterMenu extends StatefulWidget {
  const FooterMenu({Key? key}) : super(key: key);

  @override
  State<FooterMenu> createState() => _FooterMenuState();
}

class _FooterMenuState extends State<FooterMenu> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: 80,
      child: Container(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 1,
              height: 80,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
                color: Colors.black45,
              ),
            ),
            IconButton(
                onPressed: (){
                  print('CLICKED! menu footer icon');
                },
                icon: Icon(Icons.menu),
              tooltip: 'Open App Menu',
              iconSize: 35,
            ),
            SizedBox(
              width: 1,
              height: 80,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                color: Colors.black45,
              ),
            ),
            IconButton(
                onPressed: (){
                  print('CLICKED! trick lists footer icon');
                },
                icon: Icon(Icons.add_box),
                tooltip: 'Select Trick Lists',
              iconSize: 35,
            ),
            SizedBox(
              width: 1,
              height: 80,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                color: Colors.black45,
              ),
            ),
            IconButton(
                onPressed: (){
                  print('CLICKED! log-out icon');
                },
                icon: Icon(Icons.logout),
                tooltip: 'Log-out of App',
              iconSize: 35,
            ),
            SizedBox(
              width: 1,
              height: 80,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
