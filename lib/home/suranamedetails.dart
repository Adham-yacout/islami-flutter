import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class suranamedetails extends StatefulWidget {
  static const String routename = 'suranamedetails';

  @override
  State<suranamedetails> createState() => _suranamedetailsState();
}

class _suranamedetailsState extends State<suranamedetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as suranamedetailsargs;
    if (verses.isEmpty) {
      loadfile(args.index);
    }

    return Stack(
      children: [
        Image.asset('assets/images/mainscreen.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text("${args.name}",
                style: Theme.of(context).textTheme.displayLarge),
            centerTitle: true,
          ),
          body: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: verses.length == 0
                  ? Center(
                      child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ))
                  : ListView.separated(
                      padding: EdgeInsets.all(12),
                      itemBuilder: (context, index) {
                        return Text(
                          verses[index] + "(${index + 1})",
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          thickness: 1,
                        );
                      },
                      itemCount: verses.length)),
        ),
      ],
    );
  }

  void loadfile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> ayat = content.split("\n");
    verses = ayat;
    setState(() {});
  }
}

class suranamedetailsargs {
  String name;
  int index;

  suranamedetailsargs({required this.name, required this.index});
}
