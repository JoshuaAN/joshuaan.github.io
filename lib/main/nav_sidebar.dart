import 'package:flutter/material.dart';
import 'package:testproject/stats/stats.dart';

class NavSidebar extends StatelessWidget {
  NavSidebar({Key? key}) : super(key: key);

  bool display = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  title: const Text("Text one")
              ),
              ListTile(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const stats()));
                    display = true;
                  },
                  title: const Text("Text two")
              ),
              ListTile(
                  onTap: () {
                    print("third");
                  },
                  title: const Text("Text three")
              ),
              ListTile(
                title: Visibility(
                  child: const Text("text"),
                  visible: display,
                )
              )
            ]
        )
    );
  }
}