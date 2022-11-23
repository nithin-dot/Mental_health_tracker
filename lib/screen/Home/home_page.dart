// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/Home/taskList.dart';
import 'package:mental_health_app/screen/MusicPage/music_main_page.dart';
import 'package:mental_health_app/utils/containerForYou.dart';
import 'package:mental_health_app/utils/emoticon.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                // Greetings

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hii  John !",
                          style: TextStyle(
                            fontFamily: "ReemKufi",
                            color: Colors.black,
                            fontSize: 22,
                            //fontWeight: FontWeight.w100,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            color: primaryDarkColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.3,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffE6E6E6),
                      radius: 30,
                      child: Icon(
                        Icons.person,
                        color: Color(0xffCCCCCC),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),

                Row(
                  children: [
                    Text(
                      "How do you feel ?",
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        color: primaryDarkColor,
                        fontSize: 15,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //badly
                      EmojiCon(
                        emoticonFace: "😒",
                        emojiName: 'Sad',
                      ),
                      //fine
                      EmojiCon(
                        emoticonFace: "🙂",
                        emojiName: 'Fine',
                      ),
                      //well
                      EmojiCon(
                        emoticonFace: "😊",
                        emojiName: 'Well',
                      ),
                      //excellent
                      EmojiCon(
                        emoticonFace: "😁",
                        emojiName: 'Happy',
                      ),
                    ]),
                SizedBox(
                  height: height * 0.04,
                ),

                Text(
                  "\"Mental illness is nothing to be ashamed of, but stigma and bias shame us all\"",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 12,
                    //fontStyle: FontStyle.italic,
                    letterSpacing: 1.5,
                    wordSpacing: 2,
                  ),
                ),
                // Mood choosing
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "FOR YOU",
                  style: TextStyle(
                    color: primaryDarkColor,
                    fontFamily: "ReemKufi",
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    letterSpacing: 4,
                    wordSpacing: 6,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Column(
                  children: [
                    ContainerHomePage(
                      boxName: 'Assess You',
                      imgAssert: heartImage,
                      page: MusicPage(),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    ContainerHomePage(
                      boxName: 'Today\'s Tasks',
                      imgAssert: meditationIcon,
                      page: TaskList(),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
