import 'package:flutter/material.dart';
import 'package:play_skate/pages/profile_page.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({Key? key}) : super(key: key);

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Hero(
        tag: 'addListForm',
        child: Padding(
          padding: EdgeInsets.fromLTRB(width*.12,height*.33,width*.12,height*.33),
          child: SizedBox(
            height: 100,
            width: 100,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 2
                  )
              ),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                      },
                      child: const Text('Profile',
                        style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 24
                        ),
                      ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        print('news button');
                      },
                      child: const Text('News',
                        style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 24
                        ),
                      ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        print('Map button');
                      },
                      child: const Text('Map',
                        style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 24
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}