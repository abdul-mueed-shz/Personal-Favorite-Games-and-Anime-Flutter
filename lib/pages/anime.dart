import 'package:flutter/material.dart';
import 'package:untitled/services/gamesDetails.dart';
import 'package:untitled/services/animeDetails.dart';

class Anime extends StatefulWidget {
  const Anime({Key? key}) : super(key: key);

  @override
  _AnimeState createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
  List<AnimeDetails> animelst = [
    AnimeDetails('My Hero Academia', 'Action Superhero', 'mha.jpg'),
    AnimeDetails('Tokyo Revengers', 'Action Revenge', 'revengers.jpg'),
    AnimeDetails('Cowboy Bepop', 'Action Sci-Fi', 'bepop.jpg'),
    AnimeDetails('One Piece', 'Action Adventure', 'onepiece.jpg'),
    AnimeDetails('Naruto', 'Action Ninja', 'naruto.jpg'),
    AnimeDetails('Dragon Ball Super', 'Action Fiction', 'dbs.jpg'),
    AnimeDetails('Full Metal Alchemist', 'Action', 'fma.jpg'),
    AnimeDetails('To your Eternity', 'Action', 'eternity.jpg'),
    AnimeDetails('Re-Zero', 'Drama', 'rezero.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favortite Anime'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 6.0),
            child: Card(
              color: Colors.blue[900],
              child: ListTile(
                title: Text(
                  animelst[index].name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${animelst[index].image}'),
                ),
                trailing: Text(
                  animelst[index].genre,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: animelst.length,
      ),
      backgroundColor: Colors.blue[400],
    );
  }
}
