// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/screen/login.dart';

class screenhome extends StatelessWidget {
  const screenhome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CONTACT DETAILS"),
          actions: [
            IconButton(
                onPressed: () {
                  signout(context);
                },
                icon: Icon(Icons.exit_to_app_rounded))
          ],
        ),
        body: SafeArea(
          child: ListView.separated(
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text("Bridgeon $index"),
                subtitle: Text("Hello $index"),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://picsum.photos/200/300'),
                  radius: 30,
                ),
                trailing: Text("$index :00 am"),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            },
            itemCount: 30,
          ),
        ),
      ),
    );
  }

  signout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => screenlogin()), (route) => false);
  }
}
