import 'package:firebase/model/chat.dart';
import 'package:firebase/widgets/background.dart';
import 'package:firebase/widgets/message_edit_bar.dart';
import 'package:firebase/widgets/message_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  ChatPage();

  @override
  Widget build(BuildContext context) {
    Chat chat = ModalRoute.of(context).settings.arguments;
    return Provider<Chat>.value(
      value: chat,
      child: Scaffold(
        appBar: AppBar(title: Text(chat.name)),
        body: Stack(
          children: <Widget>[
            ChatBackground(),
            Column(
              children: <Widget>[
                Expanded(child: MessageList()),
                MessageEditBar()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

