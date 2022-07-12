// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:testproject/components/h_card.dart';
import 'package:testproject/components/h_scaffold.dart';
import 'package:testproject/constants.dart';
import 'package:testproject/pages/stats.dart';
// import 'package:testproject/main/nav_sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(          // MODIFY with const
      title: 'fake title',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: kTertiaryColor,
          foregroundColor: Colors.orangeAccent,
        ),
        canvasColor: kSecondaryColor,
        drawerTheme: const DrawerThemeData(
          backgroundColor: kPrimaryColor,
        ),
      ),
      home: Main(),             // REMOVE Scaffold
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HScaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FilledCardExample(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FilledCardExample(),
                FilledCardExample()
              ]
            )
          ]
        )
    );
  }
}

class FilledCardExample extends StatelessWidget {
  const FilledCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: HCard(
        width: 30,
        height: 20,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 10,
                minY: 0,
                maxY: 5,
                lineBarsData: [
                  LineChartBarData(
                    colors: [Colors.red],
                    spots: [
                      FlSpot(0, 0),
                      FlSpot(2, 1),
                      FlSpot(3, 4),
                      FlSpot(5, 2),
                      FlSpot(8, 3),
                      FlSpot(10, 2),
                    ]
                  ),
                  LineChartBarData(
                    colors: [Colors.blue],
                    spots: [
                      FlSpot(0, 0),
                      FlSpot(2, 3),
                      FlSpot(3, 2),
                      FlSpot(5, 4),
                      FlSpot(8, 3),
                      FlSpot(10, 3),
                    ]
                  ),
                  LineChartBarData(

                  )
                ]
              )
            ),
          ),
        ),
      ),
    );
  }
}