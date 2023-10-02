import 'dart:convert';

import 'package:flutter_application_1/model/photosModel.dart';
import 'package:http/http.dart' as http;

class ApiOperation {
  //yaha per list PhotosModel type ka isliye h ki method fromAPI2App hame PhotosModel hi return kar raha h
  List<PhotosModel> trendingWallpaper = [];
  getTrendingWallpaper() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated"), headers: {
      "Authorization":
          "73vn18ODL1lMmBeuZgNhHT0bs46EtPqmtdj1fhifEDnV1c3VQ8nSFJZP"
    }).then((value) {
      print(value.body);
      // convert into json formate and store in map
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      List photos = jsonData["photos"];
      photos.forEach((element) {
        trendingWallpaper.add(PhotosModel.fromAPI2App(element));
        Map<String, dynamic> src = element["src"];
        print(src["portrait"]);
      });
    });
    // return getTrendingWallpaper();
  }
}
