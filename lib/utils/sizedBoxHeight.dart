// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SizedBoxWithHeight extends StatelessWidget {
  final double height;

  const SizedBoxWithHeight({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: height,
      ),
    );
  }
}
