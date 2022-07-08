import 'package:flutter/material.dart';
import 'package:testproject/components/h_navbar.dart';

class HScaffold extends StatelessWidget {
  const HScaffold({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("HELIX SCOUTING")
      ),
      body: Row(
        children: <Widget>[
          HNavbar(),
          Expanded(
            child: body
          )
        ]
      ),
    );
  }
}