import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/config/routes/routes.dart';
import 'package:graduation_project/config/theming/light.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:graduation_project/providers/my_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      onGenerateRoute: (setting) => AppRouter.onGenerate(setting),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(pro.languageCode),
    );
  }
}