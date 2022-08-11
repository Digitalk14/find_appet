import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../widgets/pet-card/pet-card.dart';

class LostPage extends StatefulWidget {
  const LostPage({Key? key}) : super(key: key);

  @override
  State<LostPage> createState() => _LostPageState();
}

class _LostPageState extends State<LostPage> {
  @override
  void initState(){
    super.initState();
    loadData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lost page')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(children: [
            Text('City'),
            Text('Almaty'),
            Text('Found Pets'),
            ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(8.0),
              children: [
                PetCard(
                  imgSrc:
                      'https://media.4-paws.org/1/e/d/6/1ed6da75afe37d82757142dc7c6633a532f53a7d/VIER%20PFOTEN_2019-03-15_001-2886x1999-1920x1330.jpg',
                  breed: 'Retriever',
                  color: 'Gold',
                  size: 'Medium',
                  date: '27 june 2022',
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

Future<http.Response> getData() async {
  const url = 'http://localhost:3001/lost/dogs';
  return await http.get(Uri.parse(url));
}

void loadData() {
  getData().then((res) {
    if (res.statusCode == 200) {
      print(res.body);
    } else {
      print(res.statusCode);
    }
  }).catchError((err){
    debugPrint(err.toString());
  });
}