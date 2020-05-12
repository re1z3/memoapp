import 'package:flutter/material.dart';
import 'package:navigator_app/screens/note_list.dart';

void main() {
  runApp(Hello());
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MemoApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.deepPurple),
      home: NoteList(),
    );
  }
}
