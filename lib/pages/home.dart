import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void changePage() {
    Navigator.pushNamed(context, '/home');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //changePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: Icon(
                  Icons.games,
                  size: 100.0,
                  color: Colors.white,
                ),
                label: Text(
                  'Go to games',
                  style: TextStyle(fontSize: 35.0, color: Colors.white),
                )),
          ),
          Center(
            child: FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/anime');
                },
                icon: Icon(
                  Icons.queue_play_next,
                  size: 100.0,
                  color: Colors.white,
                ),
                label: Text(
                  'Go to Anime',
                  style: TextStyle(fontSize: 35.0, color: Colors.white),
                )),
          ),
          SizedBox(height: 100),
          Align(
              alignment: Alignment.bottomRight,
              child: FlatButton.icon(
                onPressed: () {
                  SystemNavigator.pop();
                },
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                label: Text(
                  'Exit',
                  style: TextStyle(fontSize: 35.0, color: Colors.white),
                ),
              ))
        ],
      ),
      backgroundColor: Colors.blue[900],
    );
  }
}
