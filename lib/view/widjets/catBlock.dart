import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CatBlock extends StatelessWidget {
  const CatBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
                height: 50,
                width: 100,
                fit: BoxFit.cover,
                "images/monika2.jpg"),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.black26),
          ),
          Positioned(
              left: 35,
              top: 10,
              child: Text(
                "Car",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ))
        ]));
  }
}
