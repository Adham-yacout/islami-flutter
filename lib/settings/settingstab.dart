import 'package:flutter/material.dart';
import 'package:islami/providers/Appconfigprovider.dart';
import 'package:islami/settings/languagebuttonsheet.dart';
import 'package:islami/teme/mytheme_white.dart';
import 'package:provider/provider.dart';

class settingstab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfigprovider>(context);
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'language',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: mytheme.gold),
            padding: EdgeInsets.all(18),
            child: InkWell(
              onTap: () {
                showlanguagebuttonsheet(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.applang,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(Icons.arrow_drop_down_circle_outlined, size: 25),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showlanguagebuttonsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return languagebuttonsheet();
        });
  }
}
