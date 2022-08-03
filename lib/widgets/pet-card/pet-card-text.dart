import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PetCardText extends StatelessWidget {
  const PetCardText({required this.subtitle, required this.text});
  final String subtitle;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
