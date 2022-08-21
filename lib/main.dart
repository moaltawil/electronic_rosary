import 'package:azkar_app/screens/info_screen.dart';
import 'package:azkar_app/screens/main_screen.dart';
import 'package:azkar_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
      ],
      locale: const Locale('ar'),
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen': (context) => const SplashScreen(),
        '/home_screen': (context) => const MainScreen(),
        '/info_screen': (context) => InfoScreen(),
      },
    );
  }
}
