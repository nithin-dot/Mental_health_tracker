// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/Home/home_page.dart';
import 'package:mental_health_app/utils/navBar.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Greetings

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MainNavBar()));
                        },
                        icon: Icon(Icons.arrow_back_ios_sharp),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hii John !",
                            style: TextStyle(
                              fontFamily: "ReemKufi",
                              color: Colors.black,
                              fontSize: 22,
                              //fontWeight: FontWeight.w100,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
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
                ],
              ),

              // joy with audio

              SizedBox(
                height: 30,
              ),
              Text(
                "Let Joy with Music",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  color: primaryDarkColor,
                  fontSize: 15,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: Text(
                        "Relax",
                        style: TextStyle(
                          fontFamily: "ReemKufi",
                          color: Colors.black,
                          fontSize: 15,
                          //fontWeight: FontWeight.w100,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Text("Sleep",
                            style: TextStyle(
                              fontFamily: "ReemKufi",
                              color: Colors.black,
                              fontSize: 15,
                              //fontWeight: FontWeight.w100,
                              letterSpacing: 1,
                            ))),
                  ),
                ],
              ),

              // Joy with video

              SizedBox(
                height: 30,
              ),
              Text(
                "Let Joy with Video ",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  color: primaryDarkColor,
                  fontSize: 15,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Text("Nature",
                            style: TextStyle(
                              fontFamily: "ReemKufi",
                              color: Colors.black,
                              fontSize: 15,
                              //fontWeight: FontWeight.w100,
                              letterSpacing: 1,
                            ))),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: Text("Rain",
                            style: TextStyle(
                              fontFamily: "ReemKufi",
                              color: Colors.black,
                              fontSize: 15,
                              //fontWeight: FontWeight.w100,
                              letterSpacing: 1,
                            ))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
