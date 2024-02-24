import 'package:flutter/material.dart';
import 'package:tdaway/modules/firstPage.dart';
import 'package:tdaway/modules/home_screen.dart';
import 'package:tdaway/modules/welcome_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tdaway/theme/theme.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      theme: lightMode,
      darkTheme: darkMode,
      //home: SplashScreen(),
    );
  }
}