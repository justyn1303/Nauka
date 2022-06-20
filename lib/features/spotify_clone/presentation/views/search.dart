// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:spotify_clone/features/spotify_clone/presentation/widgets/album_card_2.dart';
import 'package:spotify_clone/features/spotify_clone/presentation/views/seach_bar.dart';

class SearchView extends StatefulWidget {
  SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  double containerHeight = 500;
  double containerInitialHeight = 500;
  bool showTopBar = false;

  @override
  void initState() {
    showTopBar = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),),
                title: Text('Wykonawcy, utwory lub podcasty.',
                style: TextStyle(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                ),
                actions: [
                  // Navigate to the Search Screen
                  IconButton(
                    onPressed: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => SearchPage())),
                    icon: Icon(Icons.search),
                    color: Colors.black,
                    iconSize: 35,
                  ),
                ],
              ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Szukaj',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          SizedBox(width: 40),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Twoje ulubione gatunki',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AlbumCard2(
                                  image: AssetImage('assets/3.jpg'),
                                  label: 'Pop',
                                ),
                                AlbumCard2(
                                  image: AssetImage('assets/8.jpg'),
                                  label: 'Hip-hop',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AlbumCard2(
                                  image: AssetImage('assets/1.jpg'),
                                  label: 'Muzyka elektroniczna/dance',
                                ),
                                AlbumCard2(
                                  image: AssetImage('assets/5.jpg'),
                                  label: 'RnB',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Przeglądaj wszystko',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AlbumCard2(
                                  image: AssetImage('assets/4.jpg'),
                                  label: 'Muzyka elektroniczna/dance',
                                ),
                                AlbumCard2(
                                  image: AssetImage('assets/6.jpg'),
                                  label: 'RnB',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AlbumCard2(
                                  image: AssetImage('assets/7.jpg'),
                                  label: 'Muzyka elektroniczna/dance',
                                ),
                                AlbumCard2(
                                  image: AssetImage('assets/1.jpg'),
                                  label: 'RnB',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AlbumCard2(
                                  image: AssetImage('assets/3.jpg'),
                                  label: 'Muzyka elektroniczna/dance',
                                ),
                                AlbumCard2(
                                  image: AssetImage('assets/9.jpg'),
                                  label: 'RnB',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AlbumCard2(
                                  image: AssetImage('assets/8.jpg'),
                                  label: 'Muzyka elektroniczna/dance',
                                ),
                                AlbumCard2(
                                  image: AssetImage('assets/4.jpg'),
                                  label: 'RnB',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Pasek wyszukiwania
          // Positioned( 
          //   child: Container(
          //     margin: EdgeInsets.symmetric(vertical: 90.0),
          //     child: AnimatedContainer(
          //       duration: Duration(milliseconds: 250), 
          //       color: Colors.black,
          //         padding: EdgeInsets.symmetric(
          //           horizontal: 12,
          //           vertical: 10,
          //         ),
          //     child: SafeArea(
          //       child: Stack(
          //         children: [
          //             Container(
          //               alignment: Alignment.topCenter,
          //               height: 50,
          //               decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 borderRadius: BorderRadius.circular(5),
          //               ),
          //           ),
          //           Positioned(
          //             bottom: 15,
          //             left: 60,
          //             child: Text('Wykonawcy, utwory lub podcasty.',
          //               style: TextStyle(
          //                 color: Colors.pink,
          //                 fontStyle: FontStyle.normal,
          //                 fontSize: 20,
          //               ),
          //             ),
          //           ),
          //           Positioned(
          //             top: 7,
          //             left: 8,
          //             child: Icon(
          //               Icons.zoom_out_outlined,
          //               size: 40,
          //               color: Colors.pink,
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //       ),
          //   ),
          // ),
          // Container(
          //   child: Scaffold(
          //     appBar: AppBar(
          //       title: Text('Wykonawcy, utwory lub podcasty.'),
          //       actions: [
          //         // Navigate to the Search Screen
          //         IconButton(
          //           onPressed: () => Navigator.of(context)
          //               .push(MaterialPageRoute(builder: (_) => SearchPage())),
          //           icon: Icon(Icons.search))
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
