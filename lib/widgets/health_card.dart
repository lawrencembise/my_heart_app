import 'package:flutter/material.dart';
import 'package:my_body_my_health/constants.dart';

class HealthCard extends StatelessWidget {

   Icon icon;
   String measurementName;
   String numbers;
   String performance;
   Icon performanceIcon;

  HealthCard(this.icon,this.measurementName,this.numbers,this.performance, this.performanceIcon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text('${measurementName}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, ),),
          Text('${numbers}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: darkText),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              performanceIcon,
              Text('${performance}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),),
            ],
          )

        ],
      ),
    );
  }
}
