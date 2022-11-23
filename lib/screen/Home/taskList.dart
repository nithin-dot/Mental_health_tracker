// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/MusicPage/music_main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryDarkColor,
        title: Column(
          children: [
            Text(
              "Task For You",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 15,
                //fontStyle: FontStyle.italic,
                letterSpacing: 1.5,
                wordSpacing: 2,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerWithTask(
            headingTask: 'Meditation',
            taskDetails:
                'fjkeefwjkkjenfkjnf nlwenfnjewnafnnjewfnjqef kjefkjfekkjfekjjkafkj',
            respectivePage: MusicPage(),
          ),
          ContainerWithTask(
            headingTask: 'Meditation',
            taskDetails:
                'fjkeefwjkkjenfkjnfkjefkjfekkjfekjjkafkj nfejnwjeeeeeeeeeeeeeeeeeeeeeee efkjqwfffffffffffff qwknnnnnnnnnd',
            respectivePage: MusicPage(),
          ),
          ContainerWithTask(
            headingTask: 'Music',
            taskDetails:
                'fjkeefwjkkjenfkjnfkjefkjfekkjfekjjkafkjwfej nfkjnwefnj febefnjwefjnewf',
            respectivePage: MusicPage(),
          ),
        ],
      ),
    );
  }
}

class ContainerWithTask extends StatelessWidget {
//  launchURL(String url) async {
//    if (await canLaunch(url)) {
//      await launch(url, forceWebView: true);
//    } else {
//      throw 'Could not find $url';
//    }
//  }

  final String headingTask;
  final String taskDetails;
  final Widget respectivePage;
  const ContainerWithTask({
    super.key,
    required this.headingTask,
    required this.taskDetails,
    required this.respectivePage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: primaryLightColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: primaryDarkColor,
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(2, 2)),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => respectivePage));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              headingTask,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontSize: 15,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            Text(
              taskDetails,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 12,
                //fontStyle: FontStyle.italic,
                letterSpacing: 1.5,
                wordSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
