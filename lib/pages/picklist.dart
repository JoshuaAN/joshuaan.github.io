import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testproject/components/h_scaffold.dart';
import 'package:testproject/constants.dart';

class Picklist extends StatefulWidget {
  const Picklist({Key? key}) : super(key: key);

  @override
  State<Picklist> createState() => _PicklistState();
}

class _PicklistState extends State<Picklist> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return HScaffold(
        body: Padding(
            padding: EdgeInsets.all(25),
            child: Card(
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                        children: <Widget>[
                          // Header
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Team',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.orangeAccent,
                                    // color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Draggable picklist
                          Expanded(
                            child: ReorderableListView.builder(
                              itemBuilder: (BuildContext context, int index) {
                                return ReorderableDragStartListener(
                                  key: Key('$index'),
                                  child: Card(
                                    color: kSecondaryColor,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    // color: Color.fromRGBO(92, 28, 117, 1),
                                    // color: kSecondaryColor,
                                    // color: Color.fromRGBO(255, 255, 255, 1),
                                    child: ListTile(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                      title: Text(
                                        'Team',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: kComplementaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  index: index
                                );
                              },
                              buildDefaultDragHandles: false,
                              itemCount: _items.length,
                              onReorder: (int index0, int index1) {
                                print("test");
                              },
                            )
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}