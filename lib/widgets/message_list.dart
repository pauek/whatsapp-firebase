import 'package:firebase/model/chat.dart';
import 'package:firebase/model/message.dart';
import 'package:firebase/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class MessageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Chat chat = Provider.of<Chat>(context);
    return StreamBuilder<List<Message>>(
      stream: Firestore.instance
          .collection('groups/${chat.id}/messages')
          .orderBy('time', descending: true)
          .snapshots()
          .map(firestoreToMessageList),
      builder: (context, AsyncSnapshot<List<Message>> snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text('ERROR: ${snapshot.error.toString()}'),
          );
        }
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        List<Message> docs = snapshot.data;
        return ListView.builder(
          padding: EdgeInsets.only(bottom: 4),
          reverse: true,
          itemCount: docs.length,
          itemBuilder: (context, index) => ChatMessage(docs[index]),
        );
      },
    );
  }
}
