import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppBar extends StatelessWidget {
  String? word1;
  String? word2;
  CustomAppBar({required this.word1, required this.word2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: word1,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 22),
              children: [
                TextSpan(
                    text: word2,
                    style: TextStyle(fontSize: 22, color: Colors.orangeAccent))
              ])),
    );
  }
}

// Widget crea(BuildContext context) {
//   return Scaffold();
// }
