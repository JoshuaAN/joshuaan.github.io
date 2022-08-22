import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:testproject/components/h_chart.dart';
import 'package:testproject/constants.dart';
import 'package:testproject/io/database_team.dart';

class MatchInfo extends StatelessWidget {
  const MatchInfo({Key? key}) : super(key: key);

  @override build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Match Info",
          style: TextStyle(
              color: kComplementaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),
        Expanded(
          flex: 49,
          child: Dropdown()
        ),
        Text(
          "Match Notes",
          style: TextStyle(
            color: kComplementaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        ),
        Expanded(
          flex: 40,
          child: Padding(
            padding: EdgeInsets.all(20),
            // child: Container(
            //   color: Colors.green,
            // )
              child: Scrollbar(
                isAlwaysShown: true,
                controller: ScrollController(),
                child: ListView(
                  children: [
                    ListTile(
                      title: Text(
                        "ipsum lorem and all that stuff",
                        style: TextStyle(color: kComplementaryColor),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "ipsum lorem and all that stuff",
                        style: TextStyle(color: kComplementaryColor),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "ipsum lorem and all that stuff",
                        style: TextStyle(color: kComplementaryColor),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "ipsum lorem and all that stuff",
                        style: TextStyle(color: kComplementaryColor),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "ipsum lorem and all that stuff",
                        style: TextStyle(color: kComplementaryColor),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "ipsum lorem and all that stuff",
                        style: TextStyle(color: kComplementaryColor),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "ipsum lorem and all that stuff",
                        style: TextStyle(color: kComplementaryColor),
                      ),
                    ),
                  ]
                )
              )
          )
        )
      ]
    );
  }
}

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue = 'Auto';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: legend(dropdownValue)
            ),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 0,
                  style: const TextStyle(color: kComplementaryColor),
                  underline: Container(
                    height: 2,
                    color: kComplementaryColor
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Auto', 'Teleop', 'Endgame', 'Total']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              )
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: graph(dropdownValue)
          )
        )
      ]
    );
  }

  Widget legend(String val) {
    if (val == 'Auto') {
      return Row(
        children: [
          Text("High   ", style: TextStyle(color: Colors.green)),
          Text("Low   ", style: TextStyle(color: Colors.yellowAccent)),
          Text("Missed", style: TextStyle(color: Colors.red)),
        ]
      );
    } else if (val == 'Teleop') {
      return Row(
        children: [
          Text("High   ", style: TextStyle(color: Colors.green)),
          Text("Low   ", style: TextStyle(color: Colors.yellowAccent)),
          Text("Missed", style: TextStyle(color: Colors.red)),
        ]
      );
    } else if (val == 'Endgame') {
      return Text("");
    } else {
      return Text("Points Scored", style: TextStyle(color: kComplementaryColor));
    }
  }

  Widget graph(String val) {
    if (val == 'Auto') {
      return HChart(
        xAxis: [1, 2, 5, 6],
        yAxis: [[20, 23, 18, 20],[5, 6, 14, 7]],
        // xAxis: [1, 2],
        // yAxis: [[23, 20], [5, 6]],
        maxY: 28,
        colors: [Colors.green, Colors.orangeAccent]);
    } else if (val == 'Teleop') {
      return HChart(
        xAxis: [1, 2, 5, 6],
        yAxis: [[20, 17, 18, 19],[5, 6, 18, 7]],
        // xAxis: [1, 2],
        // yAxis: [[23, 20], [5, 6]],
        maxY: 28,
        colors: [Colors.green, Colors.orangeAccent]);
    } else if (val == 'Endgame') {
      return HChart(
        xAxis: [1, 2, 5, 6],
        yAxis: [[20, 24, 15, 23],[5, 6, 14, 7]],
        // xAxis: [1, 2],
        // yAxis: [[23, 20], [5, 6]],
        maxY: 28,
        colors: [Colors.green, Colors.orangeAccent]);
    } else {
      return HChart(
        xAxis: [1, 2, 5, 6],
        yAxis: [[20, 15, 23, 22]],
        // xAxis: [1, 2],
        // yAxis: [[23, 20], [5, 6]],
        maxY: 28,
        colors: [kComplementaryColor]);
    }
  }
}