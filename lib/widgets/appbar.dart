import 'package:appointment/constants/colors.dart';
import 'package:appointment/widgets/dialog.dart';
import 'package:flutter/material.dart';

import 'calender_schedule.dart';

myTabBar(BuildContext context) {
  return AppBar(
      title: const Text('Morning John Ive!'),
      backgroundColor: blueColor,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 48.0, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.centerLeft,
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [
                      lightblueColor,
                      lightPink,
                      lighterPink,
                    ])),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const CustomDialogBox();
                              });
                        },
                        child: Calendar(
                          month: 'May',
                          day: '03',
                          maintext: 'Track Your',
                          subtext: 'Symptoms',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const CustomDialogBox();
                              });
                        },
                        child: Calendar(
                          month: 'May',
                          day: '03',
                          maintext: 'Track Your',
                          subtext: 'Symptoms',
                        ),
                      ),
                      Calendar(
                        month: 'May',
                        day: '03',
                        maintext: 'Track Your',
                        subtext: 'Symptoms',
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(170),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: const TabBar(
                labelColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: blueColor,
                tabs: <Widget>[
                  Tab(
                    child: Align(
                      child: Text(
                        'Upcoming',
                        style: TextStyle(
                          color: blackColor,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      child: Text(
                        'History',
                        style: TextStyle(
                          color: blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
}
