// ignore_for_file: camel_case_types, prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:myapp/screen/home.dart';

class screenlogin extends StatelessWidget {
  screenlogin({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.50),
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Username"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  checklogin(context);
                },
                icon: Icon(Icons.check_box),
                label: Text("LogIn"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checklogin(BuildContext cxt) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      Navigator.of(cxt)
          .pushReplacement(MaterialPageRoute(builder: (cxt) => screenhome()));
    } else {
      ScaffoldMessenger.of(cxt)
          .showSnackBar(SnackBar(content: Text("Wrong Data")));
    }
  }
}
