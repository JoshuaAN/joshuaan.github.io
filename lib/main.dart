// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(          // MODIFY with const
      title: 'Test word generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal[300],
          foregroundColor: Colors.white,
        ),
        canvasColor: Colors.white,
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.grey[200],
        )
      ),
      home: Main(),             // REMOVE Scaffold
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("main")),
      body: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                // decoration: BoxDecoration(
                //   color: Colors.blue,
                // ),
                child: const Text('Header'),
              ),
              ListTile(
                  onTap: () {
                    print("first");
                  },
                  title: const Text("First")
              ),
              ListTile(
                  onTap: () {
                    print("second");
                  },
                  title: const Text("Second")
              ),
              ListTile(
                  onTap: () {
                    print("third");
                  },
                  title: const Text("Third")
              )
            ]
        )
      ),
    );
  }
}