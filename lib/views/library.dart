import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/album_card.dart';
import 'package:spotify_clone/widgets/album_card_3.dart';
import 'package:spotify_clone/widgets/album_card_4.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({Key? key}) : super(key: key);

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerInitialHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;

    @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        if (scrollController.offset > 224) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }

        setState(() {});
      });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            controller: scrollController,
            physics: BouncingScrollPhysics(),
            child: Container(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 80),
                    SafeArea(
                      child: Stack(
                        children: [
                          //SizedBox(height: 100),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.notification_add_outlined),
                                    SizedBox(width: 16),
                                    Text(
                                      'Od najnowszych',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 220),
                                    Icon(Icons.notification_add_outlined),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: AlbumCard4(
                              image:  AssetImage('assets/6.jpg'), 
                              label: 'label',
                              label2: 'Wykonawca'
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: AlbumCard4(
                              image:  AssetImage('assets/7.jpg'), 
                              label: 'label',
                              label2: 'Wykonawca'
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: AlbumCard3(
                              image:  AssetImage('assets/9.jpg'), 
                              label: 'label',
                              label2: 'Wykonawca',
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: AlbumCard3(
                              image:  AssetImage('assets/3.jpg'), 
                              label: 'label',
                              label2: 'Wykonawca'
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: AlbumCard3(
                              image:  AssetImage('assets/5.jpg'), 
                              label: 'label',
                              label2: 'Wykonawca',
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: AlbumCard3(
                              image:  AssetImage('assets/2.jpg'), 
                              label: 'label',
                              label2: 'Wykonawca',
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: AlbumCard3(
                              image:  AssetImage('assets/8.jpg'), 
                              label: 'label',
                              label2: 'Wykonawca',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //AppBar
          Positioned(
            child: Container(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250), 
                color: Colors.black,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                child: SafeArea(
                  child: Stack(
                    children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                      ),
                      Positioned(
                        top: 15,
                        left: 60,
                        child: Text('Biblioteka',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 7,
                        left: 0,
                        child: Container(
                          width: 45,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 7,
                        right: 55,
                        child: Icon(
                          Icons.zoom_out_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 7,
                        right: 5,
                        child: Icon(
                          Icons.add_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 12,
                        child: Text('J',
                          style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 45,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                color: showTopBar
                    ? Colors.black.withOpacity(1)
                    : Colors.black.withOpacity(0),
                padding: EdgeInsets.all(0),
                child: SafeArea(
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 250),
                          opacity: showTopBar ? 0 : 1,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                                    child: Text('Playlisty',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                                    child: Text('Wykonawcy',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                                    child: Text('Podcasty i programy',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

