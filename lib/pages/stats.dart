import 'package:flutter/material.dart';
import 'package:testproject/components/h_scaffold.dart';
import 'package:testproject/constants.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return const HScaffold(
      body: FavoriteWidget()
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          // child: IconButton(
          //   padding: const EdgeInsets.all(0),
          //   alignment: Alignment.centerRight,
          //   icon: (_isFavorited
          //       ? const Icon(Icons.star)
          //       : const Icon(Icons.star_border)),
          //   color: Colors.red[500],
          //   onPressed: _toggleFavorite,
          // ),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 0,
              style: const TextStyle(color: kComplementaryColor),
              underline: Container(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                  // storedVal = newValue!;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
        ),
        Text('$dropdownValue'),
      ],
    );
  }

  // void _toggleFavorite() {
  //   setState(() {
  //     _isFavorited = !_isFavorited;
  //   });
  // }
}