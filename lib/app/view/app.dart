import 'package:flutter/material.dart';
import 'package:tpedical/app/auth/login_page.dart';
import 'package:tpedical/app/auth/resetpass_page.dart';
import 'package:tpedical/app/auth/signup_page.dart';
import 'package:tpedical/app/view/main_views/home_page.dart';
import 'package:tpedical/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
