import 'package:flutter/material.dart';
import 'package:testproject/main.dart';
import 'package:testproject/pages/picklist.dart';

import 'package:testproject/pages/stats.dart';

import '../constants.dart';

class HNavbar extends StatelessWidget{
  const HNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Center(
                  child: Text(
                    'Header',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.orangeAccent,
                      // color: Colors.amberAccent,
                    ),
                  )
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => stats()));
              },
              title: Center(
                child: Text(
                  'Pick list',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kComplementaryColor,
                    // color: Colors.amberAccent,
                  ),
                )
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Main()));
              },
              title: Center(
                child: Text(
                  'Stats',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kComplementaryColor,
                  ),
                )
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Picklist()));
              },
              title: Center(
                child: Text(
                  'Teams',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kComplementaryColor,
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}