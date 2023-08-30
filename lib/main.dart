import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/hadeth/hadethnamedetails.dart';
import 'package:islami/home/homescreen.dart';
import 'package:islami/home/quran/suranamedetails.dart';
import 'package:islami/providers/Appconfigprovider.dart';
import 'package:islami/teme/mytheme_white.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Appconfigprovider(), child: app()));
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Appconfigprovider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homescreen.routename,
      routes: {
        homescreen.routename: (context) => homescreen(),
        suranamedetails.routename: (context) => suranamedetails(),
        hadethamedetails.routename: (context) => hadethamedetails(),
      },
      theme: mytheme.lighttheme,
      darkTheme: mytheme.darktheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.applang),
    );
  }
}
