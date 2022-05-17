import 'package:flutter/material.dart';
import 'package:play_skate/pages/skate_page.dart';
import 'package:play_skate/widgets/hero_add_list_route.dart';
import '/widgets/skate_button.dart';
import '/widgets/list_item.dart';
import '/widgets/add_list_pop_up.dart';


class TrickListBox extends StatefulWidget {
  const TrickListBox({Key? key}) : super(key: key);

  @override
  State<TrickListBox> createState() => _TrickListBoxState();
}

class _TrickListBoxState extends State<TrickListBox> {
  final List<String> trickListItems = ['Basic tricks', 'Flat ground tricks', 'Flip tricks', 'Ledge tricks'];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var _showAddForm = false;

    // final trickListItems = List<String>.generate(
    //   11,
    //     (int i) => 'Trick list ${i+1}'
    // );


    void _updateList(String trick){
      setState(() {
        trickListItems.add(trick);
      });
    }

    void _addList(){
      print('add list function');
      Navigator.of(context).push(HeroAddListRoute(builder: (context) {
        return AddListPopUp(trickListItems, _updateList);
      }));
    }

    void _getTrick(){
      print('get trick function');
      Navigator.push(context, MaterialPageRoute(builder: (context) => SkatePage()));
    }

    return SizedBox(
      // width: width*.8,
      // height: height*.6,
      child: Container(
        margin: const EdgeInsets.only(left: 50),
        decoration: const BoxDecoration(
          // color: Color.fromRGBO(65, 61, 67, 1.0),
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('  Pick Your Tricks:',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Oswald',
                    color: Colors.red
                  ),
                ),
              ],
            ),
            Container(
              height: height*.55,
              child: Scrollbar(
                isAlwaysShown: true,
                scrollbarOrientation: ScrollbarOrientation.left,
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: trickListItems.length,

                    itemBuilder: (context, index){
                      return ListItem(title: trickListItems[index],);
                    }
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Hero(
                    tag: 'addListForm',
                    child: SkateButton('ADD LIST', _addList)
                ),
                SkateButton('GET TRICK', _getTrick),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
