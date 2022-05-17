import 'package:flutter/material.dart';
import 'package:play_skate/pages/news_page.dart';
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white
                    ),
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
                  SizedBox(
                    width: 200,
                    height: 1,
                    child: Container(
                      color: Colors.black45,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white
                    ),
                      onPressed: (){
                        print('news button');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewsPage()));
                      },
                      child: const Text('News',
                        style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 24
                        ),
                      ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 1,
                    child: Container(
                      color: Colors.black45,
                    ),
                  ),
                  // ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //         primary: Colors.black,
                  //         onPrimary: Colors.white
                  //     ),
                  //     onPressed: (){
                  //       print('Map button');
                  //     },
                  //     child: const Text('Map',
                  //       style: TextStyle(
                  //         fontFamily: 'Oswald',
                  //         fontSize: 24
                  //       ),
                  //     )
                  // ),
                  // SizedBox(
                  //   width: 200,
                  //   height: 1,
                  //   child: Container(
                  //     color: Colors.black45,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
