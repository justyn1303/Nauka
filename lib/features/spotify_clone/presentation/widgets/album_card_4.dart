import 'package:flutter/material.dart';
import 'package:spotify_clone/features/spotify_clone/presentation/views/album_view.dart';

class AlbumCard4 extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final String label2;
  final Function? onTap;
  final double size;
  const AlbumCard4({
    Key? key,
    required this.image,
    required this.label,
    required this.label2,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image(
              image: image, 
              width: 90, 
              height: 90, 
              fit: BoxFit.cover
            ),
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,),
                child: Text(label),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(label2),
              ),
            ],
          ),
          // SizedBox(height: 10),
          // Text(label2),
        ],
      ),
    );
  }
}
