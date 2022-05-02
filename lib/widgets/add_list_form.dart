import 'package:flutter/material.dart';

class AddListForm extends StatefulWidget {
  const AddListForm({Key? key}) : super(key: key);

  @override
  State<AddListForm> createState() => _AddListFormState();
}

//TODO: FIGURE OUT FORM/MENU/CARD POPUP
class _AddListFormState extends State<AddListForm> {
  final _formKey = GlobalKey<FormState>();
  final _trickList = <String>[];
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                initialValue: 'Enter List Name',
                validator: (value){
                  if (value == null || value.isEmpty){
                    return 'Please Enter Some Text';
                  }
                  _name = value;
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('List with name ${_name}created')),
                      );
                    }
                  },
                  child: Text('FINISH'),
              ),
            ],
          ),
        )
    );
  }
}
