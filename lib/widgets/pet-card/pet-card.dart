import 'package:find_appet/widgets/pet-card/pet-card-text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PetCard extends StatelessWidget {
  const PetCard(
      {required this.imgSrc,
      required this.breed,
      required this.color,
      required this.size,
      required this.date});
  final String imgSrc;
  final String breed;
  final String color;
  final String size;
  final String date;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/lost-card');
      },
      child: Card(
        child: Row(
          children: [
            Image.network(
              imgSrc,
              width: 100,
              height: 100,
            ),
            Column(
              children: [
                PetCardText(
                  subtitle: 'Breed: ',
                  text: breed,
                ),
                PetCardText(
                  subtitle: 'Color:',
                  text: color,
                ),
                PetCardText(
                  subtitle: 'Size:',
                  text: size,
                ),
                PetCardText(
                  subtitle: 'Date:',
                  text: date,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
