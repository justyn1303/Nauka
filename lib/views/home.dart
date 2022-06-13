import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_clone/views/album_view.dart';
import 'package:spotify_clone/widgets/album_card.dart';
import 'package:spotify_clone/widgets/song_card.dart';
import 'package:spotify_clone/widgets/song_card_2.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 144, 62, 211),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                ],
              ),
            ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dzień dobry',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              SizedBox(width: 40),
                              Row(
                                children: [
                                  Icon(Icons.notification_add_outlined),
                                  SizedBox(width: 16),
                                  Icon(Icons.history),
                                  SizedBox(width: 16),
                                  Icon(Icons.settings),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              RowAlbumCard(label: 'Album 1',
                            image: AssetImage('assets/2.jpg'),),
                              SizedBox(width: 16),
                              RowAlbumCard(label: 'Album 2',
                            image: AssetImage('assets/7.jpg'),),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              RowAlbumCard(label: 'Album 3',
                            image: AssetImage('assets/3.jpg'),),
                              SizedBox(width: 16),
                              RowAlbumCard(label: 'Album 4',
                            image: AssetImage('assets/9.jpg'),),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              RowAlbumCard(label: 'Album 5',
                            image: AssetImage('assets/8.jpg'),),
                              SizedBox(width: 16),
                              RowAlbumCard(label: 'Album 6',
                            image: AssetImage('assets/4.jpg'),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Programy, które mogą Ci się spodobać',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: 'Best Mode',
                            image: AssetImage('assets/1.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Album 1',
                            image: AssetImage('assets/2.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Album 2',
                            image: AssetImage('assets/3.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Album 3',
                            image: AssetImage('assets/4.jpg'),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Album 4',
                            image: AssetImage('assets/5.jpg'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text( 
                              'Wróć do nas',
                              style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage('assets/9.jpg'),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage('assets/6.jpg'),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage('assets/7.jpg'),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage('assets/4.jpg'),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text( 
                              'Ostatnio odtwarzane',
                              style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              ClipRRect(
                                child: SongCard2(
                                  image: AssetImage('assets/4.jpg'),
                                ),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              SizedBox(width: 16),
                              ClipRRect(
                                child: SongCard2(
                                  image: AssetImage('assets/1.jpg'),
                                ),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              SizedBox(width: 16),
                              ClipRRect(
                                child: SongCard2(
                                  image: AssetImage('assets/3.jpg'),
                                ),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              SizedBox(width: 16),
                              ClipRRect(
                                child: SongCard2(
                                  image: AssetImage('assets/2.jpg'),
                                ),
                                borderRadius: BorderRadius.circular(90),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text( 
                              'Przygotowano dla Justyna',
                              style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage('assets/4.jpg'),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage('assets/1.jpg'),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage('assets/3.jpg'),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage('assets/2.jpg'),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({Key? key, required this.image, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white24, borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              width: 48,
              height: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8),
            Text(label)
          ],
        ),
      ),
    );
  }
}
