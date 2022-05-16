import 'package:flutter/material.dart';
import 'package:play_skate/pages/signIn_page.dart';
import 'package:play_skate/widgets/hero_menu_route.dart';
import 'package:play_skate/widgets/pop_up_menu.dart';

class FooterMenu extends StatefulWidget {
  // const FooterMenu({Key? key}) : super(key: key);

  final VoidCallback onTricksChanged;

  FooterMenu({required this.onTricksChanged});

  @override
  State<FooterMenu> createState() => _FooterMenuState();
}

class _FooterMenuState extends State<FooterMenu> {
  bool _isSigned = false;

  void _isSignedAction(){
    setState(() {
      _isSigned = !_isSigned;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Successfully signed-out')),
    );
  }

  void _isNotSignedAction(){
    setState(() {
      _isSigned = !_isSigned;
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
    });

  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    void _popUpMenu(){
      Navigator.of(context).push(HeroMenuRoute(builder: (context) {
        return const PopUpMenu();
      }));
    }

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
                  Hero(
                    tag: 'popUpMenu',
                    child: IconButton(
                        onPressed: (){
                          print('CLICKED! menu footer icon');
                          _popUpMenu();
                        },
                        icon: Icon(Icons.menu),
                      tooltip: 'Open App Menu',
                      iconSize: 35,
                    ),
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
                      onPressed: _isSigned ? _isSignedAction : _isNotSignedAction,
                      icon: Icon(
                          _isSigned ? Icons.logout : Icons.login,
                      ),
                      tooltip: 'Log-out of App',
                    iconSize: 35,
                  ),
                  Text(
                    _isSigned ? 'Sign-Out' : 'Sign-in',
                  style: const TextStyle(
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
