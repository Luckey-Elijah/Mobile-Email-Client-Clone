import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mail search bar goes here'),
      ),
      body: Container(
        child: ListView(
          children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ],
        ),
      ),
    );
  }
}
