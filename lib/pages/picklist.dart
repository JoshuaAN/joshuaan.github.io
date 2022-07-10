import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:testproject/components/h_card.dart';
import 'package:testproject/components/h_scaffold.dart';
import 'package:testproject/constants.dart';

class Picklist extends StatefulWidget {
  const Picklist({Key? key}) : super(key: key);

  @override
  State<Picklist> createState() => _PicklistState();
}

class HScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse
  };
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
                                    color: Color.fromRGBO(92, 28, 117, 100),
                                    child: ListTile(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                      title: Text(
                                        'Team',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.orangeAccent,
                                          // color: Colors.amberAccent,
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

            // child: ReorderableListView.builder(
            //   padding: const EdgeInsets.all(8),
            //   buildDefaultDragHandles: false,
            //   itemCount: _items.length,
            //   itemBuilder: (BuildContext context, int index) {
                // return ReorderableDragStartListener(
                //   key: Key('$index'),
                //   child: ListTile(
                //     contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                //     title: Center(
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: <Widget>[
                //           Text(
                //             'Team',
                //             style: TextStyle(
                //               fontWeight: FontWeight.bold,
                //               fontSize: 16,
                //               color: Colors.orangeAccent,
                //             )
                //           ),
                //         ]
                //       )
                //     )
                //   ),
                //   index: index
                // );
              // },
              // onReorder: (int index0, int index1) {
              //   print("test");
              // },
//       )
//     );
//   }
// }