import 'package:flutter/material.dart';
import '../../utilites/text.dart' as text;
import '../../features/tab_itemStack.dart';

class HomePage extends StatelessWidget {
  HomePage({required this.onPush});
  final ValueChanged<TabItem> onPush;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Hello!\nChoose your option",
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                ),
                onPressed: () {
                  onPush.call(TabItem.lost);
                  // Navigator.pushNamed(context, '/profile/login');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'I lost my pet',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: Icon(
                          Icons.login,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () {
                  onPush.call(TabItem.found);
                  // Navigator.pushNamed(context, '/profile');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'I found a pet',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
