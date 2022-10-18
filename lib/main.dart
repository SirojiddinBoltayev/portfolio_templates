import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
// import 'package:portfolio_templates/pages/home_page.dart';
import 'package:portfolio_templates/pages/splash_page.dart';

import 'cupertino_example.dart';
import 'material_example.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
final savedThemeMode = await AdaptiveTheme.getThemeMode();
WidgetsFlutterBinding.ensureInitialized();
SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent, // transparent status bar
));
runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatefulWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const MyApp({super.key, this.savedThemeMode});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isMaterial = true;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Siroj Boltayev',
        debugShowCheckedModeBanner: false,
    // home: SplashPage(),
    initialRoute: '/',
    routes: {
    '/': (context) => SplashFuturePage(),
    // '/': (context) => SplashFuturePage(),
    '/home': (context) => AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      child: isMaterial
          ? MaterialExample(
          savedThemeMode: widget.savedThemeMode,
          onChanged: () => setState(() => isMaterial = false))
          : CupertinoExample(
          savedThemeMode: widget.savedThemeMode,
          onChanged: () => setState(() => isMaterial = true)),
    )}

    );
  }
}




