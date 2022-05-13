import 'package:flutter/material.dart';

class FooterMenu extends StatefulWidget {
  // const FooterMenu({Key? key}) : super(key: key);

  final VoidCallback onTricksChanged;

  FooterMenu({required this.onTricksChanged});

  @override
  State<FooterMenu> createState() => _FooterMenuState();
}

class _FooterMenuState extends State<FooterMenu> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: SizedBox(
        width: width-30,
        height: 90,
        child: Container(
          margin: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(25)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 1,
                height: 80,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  color: Color.fromRGBO(162, 53, 39, 1.0),
                ),
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: (){
                        print('CLICKED! menu footer icon');
                      },
                      icon: Icon(Icons.menu),
                    tooltip: 'Open App Menu',
                    iconSize: 35,
                  ),
                  const Text('Menu',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 1,
                height: 80,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  color: Color.fromRGBO(162, 53, 39, 1.0),
                ),
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: widget.onTricksChanged,
                      //     (){
                      //   print('CLICKED! trick lists footer icon');
                      // },
                      icon: Icon(Icons.add_box),
                      tooltip: 'Select Trick Lists',
                    iconSize: 35,
                  ),
                  const Text('Trick Lists',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 16
                  ),
                  )
                ],
              ),
              SizedBox(
                width: 1,
                height: 80,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  color: Color.fromRGBO(162, 53, 39, 1.0),
                ),
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: (){
                        print('CLICKED! log-out icon');
                      },
                      icon: Icon(Icons.logout),
                      tooltip: 'Log-out of App',
                    iconSize: 35,
                  ),
                  const Text('Sign-Out',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 16
                  ),
                  )
                ],
              ),
              SizedBox(
                width: 1,
                height: 80,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                  color: Color.fromRGBO(162, 53, 39, 1.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
