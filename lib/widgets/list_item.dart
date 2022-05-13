import 'package:flutter/material.dart';
import 'list_heading.dart';

class ListItem extends StatefulWidget {
  // const ListItem({Key? key}) : super(key: key);

  final String title;

  ListItem({required this.title});

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                activeColor: Colors.black54,
                  value: _isChecked,
                  onChanged: (bool? value){
                    setState(() {
                      _isChecked = value!;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ListHeading(title: widget.title),
                ],
              ),
              TextButton(
                  onPressed: (){
                    print('pressed edit button of ${widget.title}');
                  },
                  child: const Text(
                    'edit',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Oswald',
                      fontSize: 14,
                      decoration: TextDecoration.underline
                    ),
                  ),
              )
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            height: 2,
            child: Container(
              margin: EdgeInsets.only(left: 15),
              color: Color.fromRGBO(0, 0, 0, 0.25),
            ),
          )
        ],
      ),
    );
  }
}
