import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:testproject/components/h_scaffold.dart';
import 'package:testproject/constants.dart';
import 'package:testproject/main.dart';
import 'package:testproject/pages/team/event_info.dart';
import 'package:testproject/pages/team/match_info.dart';
import 'package:testproject/pages/team/pit_info.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    return HScaffold(
      body: Center(
        child: Center(
          child: Row(
            children: [
              // Padding(
              //   padding: EdgeInsets.all(25),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25,25,12.5,12.5),
                        child: Card(
                          color: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kPadding),
                            child: EventInfo()
                          )
                        ),
                      )
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(25,12.5,12.5,25),
                        child: Card(
                          color: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kPadding),
                            child: PitInfo()
                          )
                        )
                      )
                    )
                  ]
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(12.5,25,25,25),
                  child: Card(
                    color: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(kPadding),
                      child: MatchInfo()
                    )
                  ),
                )
              ),
            ]
          )
        )
      )
    );
  }
}