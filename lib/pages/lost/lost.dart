import 'package:flutter/material.dart';

import '../../widgets/pet-card/pet-card.dart';

class LostPage extends StatelessWidget {
  @override
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
