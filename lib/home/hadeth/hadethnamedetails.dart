import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadethitem.dart';

class hadethamedetails extends StatefulWidget {
  static const String routename = 'hadethnamedetails';

  @override
  State<StatefulWidget> createState() => _hadethamedetailsState();
}

class _hadethamedetailsState extends State<hadethamedetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as hadeth;

    return Stack(
      children: [
        Image.asset('assets/images/mainscreen.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(args.title,
                style: Theme.of(context).textTheme.displayLarge),
            centerTitle: true,
          ),
          body: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: ListView.builder(
                  padding: EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Text(
                      (args.content[index]),
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    );
                  },
                  itemCount: args.content.length)),
        ),
      ],
    );
  }

}


