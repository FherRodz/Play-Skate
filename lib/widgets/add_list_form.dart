import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class AddListForm extends StatefulWidget {
  // const AddListForm({Key? key}) : super(key: key);

  List<String> _trickList;
  final Function _update;
  AddListForm(this._trickList, this._update);

  @override
  State<AddListForm> createState() => _AddListFormState();
}

class _AddListFormState extends State<AddListForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isTrick = false;
  var _trickController  = TextEditingController();
  var _nameController  = TextEditingController();

  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Material(
              child: TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  label: Text('List Name')
                ),
                validator: (value){
                  if (value == null || value.isEmpty) {
                    return 'Please enter a list name.';
                  }
                  _name = value;
                  return null;
                },
              ),
            ),
            Material(
              child: TextFormField(
                controller: _trickController,
                decoration: const InputDecoration(
                    label: Text('Trick to add')
                ),
                validator: (value){
                  if (!_isTrick) {
                    return 'Please enter at least one trick';
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      textStyle: const TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 16
                      )
                  ),
                  onPressed: () {
                    _isTrick = true;
                    _trickController.clear();
                  },
                  child: const Text('Add Trick'),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  textStyle: const TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 24
                  )
              ),
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  widget._update(_name);
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  _nameController.clear();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('SAVE'),
            ),
          ],
        ),
      ),
    );
  }
}
