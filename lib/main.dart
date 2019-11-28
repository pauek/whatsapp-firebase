import 'package:firebase/pages/chat_list_page.dart';
import 'package:firebase/pages/chat_page.dart';
import 'package:firebase/pages/new_group_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routes: {
        '/': (_) => ChatListPage(),
        '/chat': (_) => ChatPage(),
        '/new': (_) => NewGroupPage(),
      },
      initialRoute: '/',
    );
  }
}


