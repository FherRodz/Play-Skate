import 'package:flutter/material.dart';
import 'package:play_skate/widgets/add_list_form.dart';

class AddListPopUp extends StatefulWidget {
  // const AddListPopUp({Key? key}) : super(key: key);

  List<String> _trickList;
  final Function _update;
  AddListPopUp(this._trickList, this._update);

  @override
  State<AddListPopUp> createState() => _AddListPopUpState();
}

class _AddListPopUpState extends State<AddListPopUp> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final _formKey = GlobalKey<FormState>();

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
                Expanded(
                    child: AddListForm(widget._trickList, widget._update)),
              ],
            ),
          ),
        ),
      )
    );
  }
}
