import 'package:flutter/material.dart';
import 'package:testproject/constants.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:testproject/pages/picklist.dart';

class HSearch extends StatelessWidget {
  const HSearch({Key? key}) : super(key: key);

  @override build(BuildContext context) {
    // return Theme(
    //   data: Theme.of(context).copyWith(
    //     primaryColor: Colors.redAccent
    //   ),
    //   child: TypeAheadForm(
    //     style: TextStyle(
    //       color: kComplementaryColor
    //     ),
    //     decoration: InputDecoration(
    //       hintStyle: TextStyle(
    //         color: kComplementaryColor
    //       ),
    //       prefixIcon: Icon(
    //         Icons.search,
    //         color: kComplementaryColor,
    //       ),
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: BorderSide(
    //           color: Colors.white
    //         )
    //       ),
    //       enabledBorder: OutlineInputBorder(
    //         borderSide: BorderSide(
    //           color: kComplementaryColor
    //         )
    //       ),
    //       hintText: "Search"
    //     ),
    //   )
    // );
    return TypeAheadFormField(
      textFieldConfiguration: TextFieldConfiguration(
          autofocus: true,
          style: DefaultTextStyle.of(context).style.copyWith(

          ),
          decoration: const InputDecoration(
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
        return List<int>.filled(5, 0);
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text("name"),
          subtitle: Text("Suggestion"),
        );
      },
      onSuggestionSelected: (suggestion) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Picklist()
        ));
      },
    );
  }
}