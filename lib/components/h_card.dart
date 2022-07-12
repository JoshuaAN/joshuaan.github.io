import 'package:flutter/material.dart';

class HCard extends StatelessWidget {
  const HCard({Key? key, required this.child, required this.width, required this.height}) : super(key: key);

  final Widget child;
  final double width;
  final double height;

  @override build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 0,
      // color: Colors.grey[100],
      // color: Color.fromRGBO(66, 20, 143, 100),
      color: Color.fromRGBO(75, 25, 123, 100),
      child: SizedBox(
        width: width * MediaQuery.of(context).size.width * 0.01,
        height: height * MediaQuery.of(context).size.height * 0.01,
        // width: width,
        // height: height,
        child: child
      ),
    );
  }
}