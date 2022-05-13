import 'package:flutter/material.dart';

class AddListForm extends StatefulWidget {
  const AddListForm({Key? key}) : super(key: key);

  @override
  State<AddListForm> createState() => _AddListFormState();
}

class _AddListFormState extends State<AddListForm> {
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
          ),
        ),
      )
    );
  }
}
