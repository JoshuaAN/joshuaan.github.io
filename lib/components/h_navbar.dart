import 'package:flutter/material.dart';

class HNavbar extends StatelessWidget{
  const HNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext) {
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
                  },
                  title: const Text("Text one")
              ),
              ListTile(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const stats()));
                  },
                  title: const Text("Text two")
              ),
              ListTile(
                  onTap: () {
                    print("third");
                  },
                  title: const Text("Text three")
              ),
            ]
        )
    );
  }
}