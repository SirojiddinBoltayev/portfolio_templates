import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_templates/pages/home_page.dart';
import 'package:portfolio_templates/pages/splash_page.dart';

void main() { WidgetsFlutterBinding.ensureInitialized();
SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent, // transparent status bar
));
// SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
//   SystemUiOverlay.top
// ]);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        // primarySwatch: Colors.,
      ), initialRoute: '/',
      routes: {
        '/': (context) => SplashFuturePage(),
        // '/': (context) => SplashFuturePage(),
        '/home': (context) => MyHomePage1(),
      },
      // home:   MyHomePage1(),
    );
  }
}




