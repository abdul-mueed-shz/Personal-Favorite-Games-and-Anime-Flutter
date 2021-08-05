import 'package:flutter/material.dart';
import 'package:untitled/services/gamesDetails.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Games> gamesList = [
    Games('Remember me', 'Action', 'rememberme.jpg'),
    Games('The evil Within 2', 'Horror', 'evilwithin.jpg'),
    Games('CyberPunk', 'Action Adventure', 'cyberpunk.jpg'),
    Games('Resident Evil 7', 'Horror', 're7.jpg'),
    Games('Dishonored', 'Action', 'dishonored.jpg'),
    Games('Dishonored 2', 'Action', 'dishonored2.jpg'),
    Games('Rainbow six', 'Action Multiplayer', 'r6s.jpg'),
    Games('Persona 5', 'Role-Playing', 'persona5.jpg'),
    Games('Yakuza 6', 'Action', 'yakuza6.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorite Games'),
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
                  gamesList[index].name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${gamesList[index].img}'),
                ),
                trailing: Text(
                  gamesList[index].genre,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: gamesList.length,
      ),
      backgroundColor: Colors.blue[400],
    );
  }
}
