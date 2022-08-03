import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/contacts/contact-card.dart';
import '../../widgets/lost-card/text-block.dart';

class LostCardPage extends StatelessWidget {
  const LostCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pet Screen')),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://media.4-paws.org/1/e/d/6/1ed6da75afe37d82757142dc7c6633a532f53a7d/VIER%20PFOTEN_2019-03-15_001-2886x1999-1920x1330.jpg',
                  ),
                ),
                Row(
                  children: [
                    LostCardTextBlock(
                      text: 'Breed',
                      subtitle: 'Retriever ',
                    ),
                    LostCardTextBlock(
                      text: 'Color',
                      subtitle: 'Gold',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    LostCardTextBlock(
                      text: 'Size',
                      subtitle: 'Medium',
                    ),
                    LostCardTextBlock(
                      text: 'Date found',
                      subtitle: '27 june 2022',
                    ),
                  ],
                ),
                ContactCard(phone: '+7(924)7619861',email: 'vasilievdmtr@gmail.com'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
