import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';

class SongCard2 extends StatelessWidget {
  final AssetImage image;
  const SongCard2({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              image: image
            ),
          ),
        );
      },
      child: Container(
          width: 140,
          child: Column(
            children: [
              Image(
                image: image,
                width: 140,
                height: 140,
              ),
            ],
          )),
    );
  }
}
