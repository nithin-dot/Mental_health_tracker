// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_health_app/constant.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mental_health_app/screen/DoctorPage/doctorDetails.dart';
import 'package:mental_health_app/utils/navBar.dart';


class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  final ScrollController controller = ScrollController();
  List list = [
    "John",
    "Thomas",
    "Jackey",
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                              //height: 8.0,
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
              SizedBox(
                height: 20,
              ),
              GFSearchBar(
                searchList: list,
                searchQueryBuilder: (query, list) => list.where((item) {
                  return item!
                      .toString()
                      .toLowerCase()
                      .contains(query.toLowerCase());
                }).toList(),
                overlaySearchListItemBuilder: (dynamic item) => Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    item,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                onItemSelected: (dynamic item) {
                  setState(() {
                    print('$item');
                  });
                },
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DoctorDetails()));
                    },
                    child: Image.asset(
                      doctor1,
                      height: height * 0.15,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Image.asset(
                    doctor2,
                    height: height * 0.15,
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Image.asset(
                    doctor3,
                    height: height * 0.15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
