import 'package:flutter/material.dart';
import 'package:testproject/constants.dart';
import 'package:testproject/io/database_team.dart';

class EventInfo extends StatelessWidget {
  const EventInfo({Key? key}) : super(key: key);

  @override build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Event Info",
          style: TextStyle(
            color: kComplementaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text("test")
          ]
        )
      ]
    );
  }
}