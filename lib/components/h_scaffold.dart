import 'package:flutter/material.dart';
import 'package:testproject/components/h_navbar.dart';
import 'package:testproject/components/h_search.dart';

class HScaffold extends StatelessWidget {
  const HScaffold({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("HELIX SCOUTING"),
        // title: HSearch()
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(25,0,25,0),
            child: Center(
              child: Container(
                width: 250,
                child: HSearch()
              )
            )
          )
        ]
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