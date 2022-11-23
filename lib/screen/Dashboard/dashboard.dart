// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';

import '../../constant.dart';
import 'details.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsPage(
                                title: 'Mental Health', head: 'anxiety'),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryLightColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20 * 1.5, vertical: 90),
                    ),
                    child: const Text('Anxiety',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 24.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsPage(
                                title: 'Mental Health', head: 'stress'),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryLightColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50 * 1.5, vertical: 90),
                    ),
                    child: const Text('Stress',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 24.0)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsPage(
                            title: 'Mental Health', head: 'depression'),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryLightColor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 85 * 1.5, vertical: 90),
                ),
                child: const Text('Depression',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
