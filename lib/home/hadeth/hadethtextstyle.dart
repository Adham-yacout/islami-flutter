import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadethnamedetails.dart';

import 'hadethitem.dart';

class hadethname extends StatelessWidget {
  hadeth currenthadeth;

  hadethname({required this.currenthadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(hadethamedetails.routename, arguments: currenthadeth);
      },
      child: Text(
        currenthadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
