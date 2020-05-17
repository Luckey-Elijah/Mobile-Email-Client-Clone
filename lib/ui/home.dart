import 'package:flutter/material.dart';
import 'package:mail_client/ui/email_tile.dart';
import '../data/dummy.dart' as dummy;

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
            EmailListTile(emailMessage: dummy.emails[0]),
            EmailListTile(emailMessage: dummy.emails[1]),
            EmailListTile(emailMessage: dummy.emails[2]),
            EmailListTile(emailMessage: dummy.emails[3]),
            EmailListTile(emailMessage: dummy.emails[4]),
          ],
        ),
      ),
    );
  }
}
