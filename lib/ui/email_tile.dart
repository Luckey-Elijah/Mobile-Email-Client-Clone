import 'package:flutter/material.dart';
import 'package:mail_client/data/email_message.dart';

class EmailListTile extends StatelessWidget {
  const EmailListTile({
    Key key,
    @required this.emailMessage,
    this.favoriteChanged,
  }) : super(key: key);

  final EmailMessage emailMessage;
  final VoidCallback favoriteChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // Circle to the left of the image
          CircleAvatar(
            radius: 25.0,
            child: Text('AB'),
            key: key,
          ),
          // Title, date, and time.
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(15, 0, 0, 1)),
                    text: emailMessage.title,
                  ),
                ),
                Text('${emailMessage.date} at ${emailMessage.time}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
