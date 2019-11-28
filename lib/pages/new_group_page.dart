import 'package:flutter/material.dart';

class NewGroupPage extends StatefulWidget {
  @override
  _NewGroupPageState createState() => _NewGroupPageState();
}

class _NewGroupPageState extends State<NewGroupPage> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Group...')),
      body: Column(
        children: <Widget>[
          Text('Type the name of the new group:'),
          TextField(
            controller: _controller,
          ),
          RaisedButton(
            child: Text('Create Group'),
            onPressed: () {
              Navigator.of(context).pop(_controller.text);
            },
          )
        ],
      ),
    );
  }
}
