import 'package:flutter/material.dart';

class StackContainer extends StatelessWidget {
  final double height;
  final Widget child;

  const StackContainer({Key key, this.height, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey[850],
          ),
        ),
        child: child,
      ),
    );
  }
}
