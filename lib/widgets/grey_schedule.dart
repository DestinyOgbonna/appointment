import 'package:appointment/constants/colors.dart';
import 'package:flutter/material.dart';

class GreySchedule extends StatelessWidget {
  const GreySchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //  margin: Edg,
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 9),
                        alignment: Alignment.center,
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: greyColor,
                        ),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text('MAY',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('03',
                                style: TextStyle(
                                    fontSize: 27, color: Colors.white))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Appointment',
                          style: TextStyle(
                              fontSize: 18,
                              color: blackColor,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const Divider(
                    height: 1,
                    color: greyColor,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.24,
                        color: lightgreyColor,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Patient',
                                  style:
                                      TextStyle(fontSize: 15, color: greyColor),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Hospital',
                                  style:
                                      TextStyle(fontSize: 15, color: greyColor),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Location',
                                  style:
                                      TextStyle(fontSize: 15, color: greyColor),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Email',
                                  style:
                                      TextStyle(fontSize: 15, color: greyColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'John Ive',
                              style: TextStyle(fontSize: 15, color: blackColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Hospital Name Here',
                              style: TextStyle(fontSize: 15, color: blackColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'New York',
                              style: TextStyle(fontSize: 15, color: blackColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'johnive@outlook.com',
                              style: TextStyle(fontSize: 15, color: blackColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
