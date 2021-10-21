import 'dart:ui';
import 'package:appointment/constants/colors.dart';
import 'package:appointment/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialogBox extends StatefulWidget {
  final String? title, descriptions, text;
  final Image? img;

  const CustomDialogBox(
      {Key? key, this.title, this.descriptions, this.text, this.img})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: Constants.padding,
              top: Constants.avatarRadius + Constants.padding,
              right: Constants.padding,
              bottom: Constants.padding),
          margin: const EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: Text(
                  'Track your Symptoms',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                height: 1,
                color: greyColor,
                thickness: 1,
              ),
              const Text(
                '09:30 AM',
                style: TextStyle(
                    fontSize: 14,
                    color: blueColor,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Row(
                children: [
                  Container(
                      height: 100,
                      width: 4,
                      decoration: BoxDecoration(
                          color: calenderColor,
                          borderRadius: BorderRadius.circular(5))),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: const [
                        Text(
                          'Blood Test, Breath Test',
                          style: TextStyle(
                              fontSize: 15,
                              color: blackColor,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          'Sleep Test, Breath Test',
                          style: TextStyle(
                              fontSize: 15,
                              color: blackColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //
              const Text(
                '09:30 PM',
                style: TextStyle(
                    fontSize: 14,
                    color: blueColor,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Positioned(
          left: Constants.padding,
          right: Constants.padding,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: Constants.avatarRadius,
            child: Container(
              height: 90,
              width: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: calenderColor,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'MAY',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '03',
                    style: TextStyle(
                        fontSize: 38,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
