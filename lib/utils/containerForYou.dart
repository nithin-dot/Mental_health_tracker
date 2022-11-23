// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/DoctorPage/doctor_main_page.dart';

class ContainerHomePage extends StatelessWidget {
  final String imgAssert;
  final String boxName;
  final Widget page;
  const ContainerHomePage(
      {super.key,
      required this.imgAssert,
      required this.boxName,
      required this.page});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        width: 300,
        child: ElevatedButton(
          onPressed: () {
            _navigateToScreen(context);
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              primary: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imgAssert,
                height: 50,
              ),
              Text(
                boxName,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "OpenSans",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              Image.asset(
                arrow,
                height: 20,
              ),
            ],
          ),
        ));
  }

  void _navigateToScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }
}
