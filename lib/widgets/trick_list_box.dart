import 'package:flutter/material.dart';
import '/widgets/skate_button.dart';


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

    return SizedBox(
      width: width*.8,
      height: height*.6,
      child: Container(
        color: Color.fromRGBO(65, 61, 67, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SkateButton('ADD LIST', 'add list'),
                SkateButton('GET TRICK', 'get trick'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
