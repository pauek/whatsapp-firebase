import 'package:firebase/model/message.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageWidget extends StatelessWidget {
  final Message message;
  MessageWidget(this.message);

  @override
  Widget build(BuildContext context) {
    final formatter = new DateFormat('HH:mm');
    return Container(
      margin: EdgeInsets.fromLTRB(6, 6, 6, 0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.all(Radius.circular(3)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 4,
                ),
                child: Text(
                  message.text,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 4, bottom: 2),
              child: Text(
                '${formatter.format(message.time)}',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
