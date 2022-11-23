// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/utils/navBar.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryLightColor,
      appBar: AppBar(
        backgroundColor: primaryLightColor,
        title: Text(
          "Dr. Robert Forth",
          style: TextStyle(
            color: primaryDarkColor,
            fontFamily: "Montserrat",
            fontSize: 15,
            //fontStyle: FontStyle.italic,
            letterSpacing: 1.5,
            wordSpacing: 2,
          ),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: height * 0.05,
        ),
        Image.asset(doctimg, height: height * 0.25),
        SizedBox(
          height: height * 0.05,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                callimg,
                height: height * 0.07,
              ),
              Image.asset(
                msgimg,
                height: height * 0.07,
              )
            ],
          ),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Image.asset(
          details,
          height: height * 0.2,
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Image.asset(
          available,
          height: height * 0.06,
        )
      ]),
      //bottomNavigationBar: MainNavBar(),
    );
  }
}
