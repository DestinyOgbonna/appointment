import 'package:appointment/constants/colors.dart';
import 'package:appointment/widgets/grey_schedule.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightgreyColor,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const[
               GreySchedule(),
                GreySchedule()
              ],
            ),
          ),
        ));
  }
}
