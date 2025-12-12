import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tictic_info/firebase_options.dart';
import 'package:tictic_info/l10n/app_localizations.dart';
import 'package:tictic_info/routes/router.dart';
import 'package:tictic_info/styles/colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tictic INFOR',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fr'),
        Locale('en'),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kMainColor),
      ),
      routes: router,
      initialRoute: '/',
    );
  }
}
