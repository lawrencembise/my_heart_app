import 'package:flutter/material.dart';

class PerformanceTileIcon extends StatelessWidget {
  bool up;
  PerformanceTileIcon(this.up);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 10.0, bottom: 8.0),
      child: Container(
        height: 50,
        width: 50,
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: up? Colors.green[50]: Colors.red[50],
        ),
        child: up?  Icon(Icons.trending_up, color: Colors.green,): Icon(Icons.trending_down, color: Colors.red,),
      ),
    );
  }
}
