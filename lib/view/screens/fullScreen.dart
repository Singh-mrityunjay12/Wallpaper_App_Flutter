import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

class FullScreen extends StatefulWidget {
  final String imgUrl;
  FullScreen({Key? key, required this.imgUrl}) : super(key: key);

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  Future<void> setWallPaper() async {
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.imgUrl);
    String result =
        await WallpaperManager.setWallpaperFromFile(file.path, location);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Expanded(
              child: Container(
            child: Image.network(
              widget.imgUrl,
              fit: BoxFit.cover,
            ),
          )),
          InkWell(
              onTap: () {
                setState(() {
                  setWallPaper();
                });
              },
              child: Container(
                color: Colors.black,
                height: 60,
                width: double.infinity,
                child: Center(
                    child: Text(
                  "SetWall paper",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ))
        ]),
      ),
    );
  }
}
