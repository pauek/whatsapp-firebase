import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  String id, name;
  Chat(this.id, this.name);

  Chat.fromFirestore(DocumentSnapshot doc)
      : id = doc.documentID,
        name = doc.data['name'];
}

List<Chat> firestoreToChatList(QuerySnapshot snapshot) {
  return snapshot.documents
      .map((doc) => Chat.fromFirestore(doc))
      .toList();
}
