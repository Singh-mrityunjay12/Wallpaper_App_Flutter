import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar1 extends StatelessWidget {
  const SearchBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color.fromARGB(115, 215, 212, 212),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black38)),
      child: Row(children: [
        Expanded(
          child: TextFormField(
            decoration: const InputDecoration(
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: "Search Wallpapers"),
          ),
        ),
        InkWell(
          child: Icon(
            Icons.search,
            size: 28,
          ),
        )
      ]),
    );
  }
}
