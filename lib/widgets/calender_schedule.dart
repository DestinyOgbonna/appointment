import 'package:appointment/constants/colors.dart';
import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  Calendar({Key? key, this.maintext, this.day, this.month, this.subtext})
      : super(key: key);

  String? maintext, month, day, subtext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            height: 70,
            width: 55,
            decoration: BoxDecoration(
                color: calenderColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$month',
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text(
                  '$day',
                  style: const TextStyle(fontSize: 27, color: Colors.white),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$maintext',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Text(
                '$subtext',
                style: TextStyle(fontSize: 18, color: Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }
}
