import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testproject/constants.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:testproject/pages/picklist.dart';

import '../io/database.dart';
import '../io/database_team.dart';

class HSearch extends StatelessWidget {
  HSearch({Key? key}) : super(key: key);

  final Database data = Database();

  @override build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.red
      ),
      child: TypeAheadFormField(
        textFieldConfiguration: TextFieldConfiguration(
          style: TextStyle(color: kComplementaryColor),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Search teams",
            hintStyle: TextStyle(
              color: kComplementaryColor
            ),
            prefixIcon: Icon(
              Icons.search,
              color: kComplementaryColor
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue
              )
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: kComplementaryColor
              )
            ),
            isDense: true
          )
        ),
        suggestionsCallback: (pattern) async {
          return data.lookup(pattern);
        },
        itemBuilder: (BuildContext context, DatabaseTeam suggestion) {
          return ListTile(
            // leading: Icon(Icons.shopping_cart),
            title: Text("${suggestion.teamNumber}", style: TextStyle(color: kComplementaryColor)),
            subtitle: Text("${suggestion.teamName}", style: TextStyle(color: kComplementaryColor)),
          );
        },
        noItemsFoundBuilder: (final BuildContext context) => Padding(
          child: Text(
            "No teams found",
            style: TextStyle(color: kComplementaryColor),
          ),
          padding: EdgeInsets.all(15),
        ),
        onSuggestionSelected: (suggestion) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Picklist()
          ));
        },
        animationDuration: Duration(seconds: 0),
      )
    );
  }
}