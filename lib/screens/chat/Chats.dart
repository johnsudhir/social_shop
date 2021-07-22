import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);
  static const String chats = "Chats";

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("This is chat screen"),
      ),
    );
  }
}
