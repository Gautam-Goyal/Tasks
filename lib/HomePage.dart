import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authentication.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 100.0),
          child: Center(
              child: Column(children: [
      Text(
          "HELLO",
          style: TextStyle(fontSize: 20.0),
      ),
      SizedBox(height: 50.0,),
      ElevatedButton(
            onPressed: () {
              Provider.of<Authentication>(context, listen: false).signOut();
            },
            child: Text("Sign Out"))
    ])),
        ));
  }
}
