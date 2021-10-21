import 'package:appointment/constants/colors.dart';
import 'package:appointment/views/history.dart';
import 'package:appointment/views/upcoming.dart';
import 'package:appointment/widgets/appbar.dart';
import 'package:appointment/widgets/calender_schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: myTabBar(context),
          drawer: (const ListTile()),
          
           body:const TabBarView(
          children: [
            Upcoming(),
           History(),
          ],
        ),
        ),
      ),
    );
  }
}
