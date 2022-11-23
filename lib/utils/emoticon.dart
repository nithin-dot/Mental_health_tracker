// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/DoctorPage/doctor_main_page.dart';

class EmojiCon extends StatelessWidget {
  final String emoticonFace;
  final String emojiName;
  const EmojiCon({
    Key? key,
    required this.emoticonFace,
    required this.emojiName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(18),
              primary: primaryDarkColor,
              onPrimary: primaryLightColor,
              elevation: 8,
              shadowColor: primaryDarkColor,
              side: BorderSide(color: Colors.white, width: 1.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
            ),
            child: Text(
              emoticonFace,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            emojiName,
            style: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 12,
              
            ),
          ),
        ],
      ),
    );
  }
}
