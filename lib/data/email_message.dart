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
}
