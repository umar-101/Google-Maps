import 'package:flutter/material.dart';

class MapBottomWidgets extends StatelessWidget {
  final Widget text;
  final Widget image;

  const MapBottomWidgets({Key key, this.text, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.fromLTRB(5, 15, 5, 5),
          width: 100.0,
          height: 70.0,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(5.0)),
          child: Column(
            children: [
              image,
              SizedBox(height: 5.0),
              text,
            ],
          ),
        ),
      ),
    );
  }
}
