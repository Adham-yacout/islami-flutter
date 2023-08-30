import 'package:flutter/material.dart';
import 'package:islami/teme/mytheme_white.dart';

class selecteditem extends StatelessWidget {
  String name;

  selecteditem({required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Icon(
          Icons.check,
          size: 25,
          color: mytheme.gold,
        )
      ],
    );
  }
}
