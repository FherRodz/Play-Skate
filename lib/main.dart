import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _checkFlag = false;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Play Skate',
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pick Your Trick Lists',
                style: TextStyle(fontSize: 18),
              ),
              Container(
                color: Colors.black45,
                height: 500,
                width: 300,
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    //TODO: CREATE TRICK LIST WIDGET BASED ON FLUTTER CHECKBOX_LIST_TILE
                    CheckboxListTile(
                        title: const Text('Trick list #1'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                        print('checked!');
                        setState(() {
                          _checkFlag = !_checkFlag;
                        });
                      }
                    ),
                    CheckboxListTile(
                        title: const Text('Trick list #2'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                          print('checked!');
                          setState(() {
                            _checkFlag = !_checkFlag;
                          });
                        }
                    ),
                    CheckboxListTile(
                        title: const Text('Trick list #3'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                          print('checked!');
                          setState(() {
                            _checkFlag = !_checkFlag;
                          });
                        }
                    ),
                    CheckboxListTile(
                        title: const Text('Trick list #4'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                          print('checked!');
                          setState(() {
                            _checkFlag = !_checkFlag;
                          });
                        }
                    ),
                    CheckboxListTile(
                        title: const Text('Trick list #5'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                          print('checked!');
                          setState(() {
                            _checkFlag = !_checkFlag;
                          });
                        }
                    ),
                    CheckboxListTile(
                        title: const Text('Trick list #6'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                          print('checked!');
                          setState(() {
                            _checkFlag = !_checkFlag;
                          });
                        }
                    ),
                    CheckboxListTile(
                        title: const Text('Trick list #7'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                          print('checked!');
                          setState(() {
                            _checkFlag = !_checkFlag;
                          });
                        }
                    ),
                    CheckboxListTile(
                        title: const Text('Trick list #8'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                          print('checked!');
                          setState(() {
                            _checkFlag = !_checkFlag;
                          });
                        }
                    ),
                    CheckboxListTile(
                        title: const Text('Trick list #9'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                          print('checked!');
                          setState(() {
                            _checkFlag = !_checkFlag;
                          });
                        }
                    ),
                    CheckboxListTile(
                        title: const Text('Trick list #10'),
                        value: _checkFlag,
                        onChanged: (bool? value){
                          print('checked!');
                          setState(() {
                            _checkFlag = !_checkFlag;
                          });
                        }
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  print('Got a trick!');
                },
                child: Text('GET TRICK'),
              ),
              DropdownButton(
                  items: <String>['Menu', 'Profile', 'News', 'Settings']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    print('dropDown menu');
                  })
            ],
          ),
        ),
      ),
    );
  }

}