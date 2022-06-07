import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_body_my_health/constants.dart';
import 'package:my_body_my_health/widgets/performanceTileIcon.dart';

class PerformanceTile extends StatelessWidget {
    bool up;
    int bpm;
    String lastMonthComp;
  PerformanceTile(this.up, this.bpm, this.lastMonthComp);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20, top: 15),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PerformanceTileIcon(up),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Text('${bpm} bpm', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: darkText),),
                  ),
                  Text("${lastMonthComp} than last month ", style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 14),)
                ],
              ),
            ),
            const SizedBox(width: 65,),
            const Icon(Icons.more_vert, color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}
