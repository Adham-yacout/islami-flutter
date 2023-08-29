import 'package:flutter/material.dart';
import 'package:islami/home/quran/suranamedetails.dart';

class suraname extends StatelessWidget {
  String name;
  int index;

  suraname({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(suranamedetails.routename,
            arguments: suranamedetailsargs(name: name, index: index));
      },
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
