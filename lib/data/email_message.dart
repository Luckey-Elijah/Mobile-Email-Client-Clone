import 'package:flutter/material.dart';

class EmailMessage {
  String title;
  String messageBody;
  String senderAddress;
  String recieverAddress;
  DateTime timeStamp;
  bool starred;

  EmailMessage({
    this.title,
    this.messageBody,
    this.recieverAddress,
    this.senderAddress,
    this.timeStamp,
    this.starred,
  });

  get date {
    String readableDateTime;
    String weekdayString = _dayOfTheWeek(timeStamp.weekday);
    readableDateTime =
        '$weekdayString, ${timeStamp.month}/${timeStamp.day}/${timeStamp.year}';
    return readableDateTime;
  }

  get time {
    return '${timeStamp.hour}:${timeStamp.minute}';
  }

  String _dayOfTheWeek(int dayIndex) {
    switch (dayIndex) {
      case 1:
        return 'Monday';
        break;
      case 2:
        return 'Tuesday';
        break;
      case 3:
        return 'Wednesday';
        break;
      case 4:
        return 'Thursday';
        break;
      case 5:
        return 'Friday';
        break;
      case 6:
        return 'Saturday';
        break;
      case 7:
        return 'Sunday';
        break;
      default:
        return 'Monday';
    }
  }
}
