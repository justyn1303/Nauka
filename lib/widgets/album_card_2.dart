import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';

class AlbumCard2 extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final Function? onTap;
  final double size;
  const AlbumCard2({
    Key? key,
    required this.image,
    required this.label,
    this.onTap,
    this.size = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(image: image),
          ),
        );
      },
      child: Container(
        child: SafeArea(
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        image: image,
                        width: 185,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 15,
                left: 10,
                child: Container(
                  child: Text(
                    label,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    //maxLines: null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}