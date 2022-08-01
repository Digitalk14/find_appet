import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LostCardTextBlock extends StatelessWidget {
  const LostCardTextBlock({required this.subtitle, required this.text});
  final String subtitle;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 12.0),
          ),
          Text(text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0))
        ],
      ),
    );
  }
}
