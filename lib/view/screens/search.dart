import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_1/view/widjets/catBlock.dart';
import 'package:flutter_application_1/view/widjets/customAppbar.dart';
import 'package:flutter_application_1/view/widjets/searchBar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _Home_Screen11State();
}

class _Home_Screen11State extends State<SearchScreen> {
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SearchBar1(),
            ),
            Container(
                margin: EdgeInsets.only(top: 12),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 30,
                    itemBuilder: (context, index) => CatBlock())),
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
