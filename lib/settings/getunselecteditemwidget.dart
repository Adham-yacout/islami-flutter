import 'package:flutter/material.dart';

class unselecteditem extends StatelessWidget {
  String name;

  unselecteditem({required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
