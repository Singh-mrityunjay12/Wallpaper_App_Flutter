import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_1/view/widjets/catBlock.dart';
import 'package:flutter_application_1/view/widjets/customAppbar.dart';
import 'package:flutter_application_1/view/widjets/searchBar.dart';

class CotegoryScreen extends StatefulWidget {
  const CotegoryScreen({Key? key}) : super(key: key);

  @override
  State<CotegoryScreen> createState() => _Home_Screen11State();
}

class _Home_Screen11State extends State<CotegoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: CustomAppBar(
          word1: 'Wellcome',
          word2: ' Guru',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                child: Image.network(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    "https://images.pexels.com/photos/1287145/pexels-photo-1287145.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.black38,
              ),
              Positioned(
                  left: 120,
                  child: Column(
                    children: [
                      Text(
                        "Cotegary",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Mountain",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ))
            ]),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 16,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 400,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return GridTile(
                          header: Text(
                            textAlign: TextAlign.center,
                            "Mrityu",
                            style: TextStyle(
                                letterSpacing: 3,
                                decoration: TextDecoration.underline),
                          ),
                          footer: Text(
                            "Singh",
                            style: TextStyle(color: Colors.amber),
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 500,
                              width: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    height: 500,
                                    width: 50,
                                    fit: BoxFit.cover,
                                    "https://images.pexels.com/photos/12056650/pexels-photo-12056650.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                              )));
                    }))
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
