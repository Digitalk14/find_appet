import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, this.phone, this.email}) : super(key: key);
  final String? phone;
  final String? email;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: [Text('Somebody has found it')],
                ),
                Row(
                  children: <Widget>[
                    if (phone!.isNotEmpty) Text('Phone'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    if (phone!.isNotEmpty)
                      Expanded(
                        child: Text('$phone'),
                      ),
                    if (phone!.isNotEmpty)
                      IconButton(onPressed: () {}, icon: Icon(Icons.phone))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[if (email!.isNotEmpty) Text('email')],
                ),
                Row(
                  children: <Widget>[
                    if (email!.isNotEmpty) Expanded(child: Text('$email')),
                    if (phone!.isNotEmpty)
                      IconButton(onPressed: () {}, icon: Icon(Icons.email))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Last location',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 70, 152, 203),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
