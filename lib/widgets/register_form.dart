import 'package:flutter/material.dart';
import 'package:play_skate/pages/home_page.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isPwVisible = false;
  bool _isPwVisible2 = false;

  String _password1 = '';

  void _showHidePW(){
    setState(() {
      _isPwVisible = !_isPwVisible;
    });
  }
  void _showHidePW2(){
    setState(() {
      _isPwVisible2 = !_isPwVisible2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text('New Username'),
                  prefixIcon: Icon(Icons.supervised_user_circle_rounded)
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username.';
                }
                else if (value.length < 6){
                  return 'Username must be at least 6 characters';
                }
                return null;
              },
            ),
            TextFormField(
              obscureText: !_isPwVisible,
              decoration: InputDecoration(
                label: Text('New Password'),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: _showHidePW,
                  icon: Icon(
                      _isPwVisible ? Icons.visibility : Icons.visibility_off
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password.';
                }
                else if (value.length < 12){
                  return 'Password must be at least 12 characters';
                }
                _password1 = value;
                return null;
              },
            ),
            TextFormField(
              obscureText: !_isPwVisible2,
              decoration: InputDecoration(
                label: Text('Re-enter New Password'),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: _showHidePW2,
                  icon: Icon(
                      _isPwVisible2 ? Icons.visibility : Icons.visibility_off
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password.';
                }
                else if (value.length < 12){
                  return 'Password must be at least 12 characters';
                }
                else if (value.compareTo(_password1) != 0){
                  return 'Passwords must match';
                }
                return null;
              },
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
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
