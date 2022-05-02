import 'package:flutter/material.dart';
import '/widgets/skate_button.dart';
import '/widgets/list_item.dart';
import '/widgets/add_list_form.dart';


class TrickListBox extends StatefulWidget {
  const TrickListBox({Key? key}) : super(key: key);

  @override
  State<TrickListBox> createState() => _TrickListBoxState();
}

class _TrickListBoxState extends State<TrickListBox> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    var _showAddForm = false;

    final trickListItems = List<String>.generate(
      11,
        (int i) => 'Trick list ${i+1}'
    );


    void _addList(){
      print('add list function');
      setState(() {
        _showAddForm = !_showAddForm;
      });
    }

    void _getTrick(){
      print('get trick function');
    }

    return SizedBox(
      // width: width*.8,
      // height: height*.6,
      child: Container(
        margin: const EdgeInsets.only(left: 50),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(65, 61, 67, 1.0),
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
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: trickListItems.length,

                  itemBuilder: (context, index){
                    return ListItem(title: trickListItems[index],);
                  }
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SkateButton('ADD LIST', _addList),
                SkateButton('GET TRICK', _getTrick),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
