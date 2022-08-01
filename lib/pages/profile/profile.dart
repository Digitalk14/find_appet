import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile page')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [
            Text('Hello'),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Go to Login'))
          ]),
        ),
      ),
    );
  }
}
