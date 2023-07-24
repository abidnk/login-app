

// ignore_for_file: camel_case_types, prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:myapp/screen/login.dart';

class screensplash extends StatefulWidget {
  const screensplash({super.key});

  @override
  State<screensplash> createState() => _screensplashState();
}

class _screensplashState extends State<screensplash> {
  
  
  @override
  void initState() {
    gotologin(context);
    super.initState();
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
      'assets/login.png',
      height: 200,
    )
    )
    );
  }

  @override
  void dispose() {
    
    super.dispose();
  }

  Future<void> gotologin(BuildContext cxt) async {
   await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => screenlogin(),
    ));
  }
}



