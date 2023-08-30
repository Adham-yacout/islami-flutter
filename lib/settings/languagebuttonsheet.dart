import 'package:flutter/material.dart';
import 'package:islami/providers/Appconfigprovider.dart';
import 'package:islami/settings/getselecteditemwidget.dart';
import 'package:islami/settings/getunselecteditemwidget.dart';
import 'package:provider/provider.dart';

class languagebuttonsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfigprovider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.change("en");
            },
            child: provider.applang == 'en'
                ? selecteditem(
                    name: "English",
                  )
                : unselecteditem(name: "English"),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              provider.change("ar");
            },
            child: provider.applang == 'ar'
                ? selecteditem(
                    name: "Arabic",
                  )
                : unselecteditem(name: "Arabic"),
          )
        ],
      ),
    );
  }
}
