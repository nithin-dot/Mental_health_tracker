import 'package:flutter/material.dart';

import 'package:mental_health_app/constant.dart';
import 'package:mental_health_app/screen/Welcome/sign_in_page.dart';



class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(128.0),
              child: Image.asset(
                meditationImg,
                height: height * 0.2,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const  Text(
                  "Mind Checker is an app that helps you to control anxiety",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryDarkColor,
                    fontSize: 22.0,
                    fontFamily: "ReemKufi",
                    fontWeight: FontWeight.bold,
                    //fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  ),
                ),
              const  SizedBox(
                  height: 20,
                ),
                Container(
                    margin:const EdgeInsets.all(25),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: primaryDarkColor,
                        padding:const EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        minimumSize: const Size(88, 36),
                      ),
                      onPressed: () {
                        _navigateToHomeScreen(context);
                      },
                      child:const Text(
                        "Get Start",
                        selectionColor: primaryDarkColor,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.normal,
                          color: primaryDarkColor,
                          letterSpacing: 1,
                        ),
                      ),
                    )),
              ],
            ),
          ]),
    );
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const Loginpage()));
  }
}
