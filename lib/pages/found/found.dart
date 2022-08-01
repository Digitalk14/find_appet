import 'package:flutter/material.dart';

class FoundPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: const Text('Found page')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [Text('Hello')]),
        ),
      ),
    );
  }
}