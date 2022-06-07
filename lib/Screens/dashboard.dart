import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_body_my_health/Screens/blood_pressure.dart';
import 'package:my_body_my_health/constants.dart';

import '../widgets/health_card.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: HealthCard(
                    Icon(Icons.heart_broken_outlined),
                    "Blood Pressure",
                    "110/70",
                    "10% Higher",
                    Icon(Icons.trending_up)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BloodPressure()),
                  );
                },
              ),
              GestureDetector(
                  child: HealthCard(
                      Icon(Icons.heart_broken_outlined),
                      "Blood Pressure",
                      "110/70",
                      "10% Higher",
                      Icon(Icons.trending_up)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BloodPressure()),
                    );
                  }),
            ],
          ),
          SizedBox(height: 15,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  child: HealthCard(
                      Icon(Icons.heart_broken_outlined),
                      "Blood Pressure",
                      "110/70",
                      "10% Higher",
                      Icon(Icons.trending_up)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BloodPressure()),
                    );
                  }),
              GestureDetector(
                  child: HealthCard(
                      Icon(Icons.heart_broken_outlined),
                      "Blood Pressure",
                      "110/70",
                      "10% Higher",
                      Icon(Icons.trending_up)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BloodPressure()),
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }
}
