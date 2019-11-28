import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  String text;
  DateTime time;

  Message(this.text, this.time);

  Message.fromFirestoreData(Map<String, dynamic> data)
      : text = data['text'],
        time = data['time'].toDate();
}

List<Message> firestoreToMessageList(QuerySnapshot snapshot) {
  return snapshot.documents
      .map((doc) => Message.fromFirestoreData(doc.data))
      .toList();
}
