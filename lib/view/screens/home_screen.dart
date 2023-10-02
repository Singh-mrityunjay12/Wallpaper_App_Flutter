import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/controller/apiOperation.dart';
import 'package:flutter_application_1/model/photosModel.dart';
import 'package:flutter_application_1/view/screens/fullScreen.dart';

import 'package:flutter_application_1/view/widjets/catBlock.dart';
import 'package:flutter_application_1/view/widjets/customAppbar.dart';
import 'package:flutter_application_1/view/widjets/searchBar.dart';
import 'package:http/http.dart' as http;

class Home_Screen11 extends StatefulWidget {
  const Home_Screen11({Key? key}) : super(key: key);

  @override
  State<Home_Screen11> createState() => _Home_Screen11State();
}

class _Home_Screen11State extends State<Home_Screen11> {
  ApiOperation ans = ApiOperation();
  List images = [];
  int page = 0;
  late List<PhotosModel> treandingWllLis = [];
  GetTrdingWallPaper() async {
    treandingWllLis = await ans.trendingWallpaper;

    log(treandingWllLis.toString());
    setState(() {});
  }

  fetchApi() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated?per_page=80"),
        headers: {
          "Authorization":
              "73vn18ODL1lMmBeuZgNhHT0bs46EtPqmtdj1fhifEDnV1c3VQ8nSFJZP"
        }).then((value) {
      print(value.body);
      print(
          "///////////////////////////////////////////////////////////////////////////////////");
      Map<String, dynamic> result = jsonDecode(value.body);
      print(result);
      setState(() {
        images = result["photos"];
      });
      print(
          "///////////////////////////////////////////////////////////////////");
      print(images);
      print(images.length);
      print(
          "//////////////////////////////////////////////////////////////////////////////");
      print(images[0]);
    });
  }

  loadMore() async {
    setState(() {
      page = page + 1;
    });
    String url =
        'https://api.pexels.com/v1/curated?per_page=80&page=' + page.toString();
    await http.get(Uri.parse(url), headers: {
      "Authorization":
          "73vn18ODL1lMmBeuZgNhHT0bs46EtPqmtdj1fhifEDnV1c3VQ8nSFJZP"
    }).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images.addAll(result["photos"]);
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetTrdingWallPaper();
    fetchApi();
    // ans.getTrendingWallpaper();
  }

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
      body: Column(
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
          Expanded(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 800,
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          // mainAxisExtent: 400,
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          childAspectRatio: 2 / 3,
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
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FullScreen(
                                              imgUrl:
                                                  // treandingWllLis[index].imgSrc
                                                  //or
                                                  images[index]["src"]
                                                      ["large2x"])));
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    height: 500,
                                    width: 50,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          images[index]["src"]["portrait"],
                                          fit: BoxFit.cover,
                                        )
                                        // Image.asset(
                                        //     height: 500,
                                        //     width: 50,
                                        //     fit: BoxFit.cover,
                                        //     "images/monika2.jpg"),
                                        ))));
                      }))),
          InkWell(
              onTap: () {
                loadMore();
              },
              child: Container(
                color: Colors.black,
                height: 60,
                width: double.infinity,
                child: Center(
                    child: Text(
                  "Load More",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ))
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
