import 'package:flutter/material.dart';
import 'package:my_body_my_health/constants.dart';
import 'package:my_body_my_health/widgets/performanceTile.dart';

class BloodPressure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Container(
          color: Colors.lightBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: Text(
                  "Performance History",
                  style: TextStyle(
                      color: darkText, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              PerformanceTile(true, 70, "1% high",),
              PerformanceTile(false,65, "6% less",)

            ],
          ),
        ),
      ),
    );
  }
}
