import 'package:clover/constants.dart';
import 'package:clover/screens/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final prefs = await SharedPreferences.getInstance();
  final seen = prefs.getBool('seen') ?? false;
  runApp(MyApp(seen: seen));
}

class MyApp extends StatelessWidget {
  final bool seen;

  const MyApp({super.key, required this.seen});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clover',
      theme: ThemeData(
          backgroundColor: backgroundColor,
          // colorScheme: const ColorScheme(brightness: Brightness.light, primary: Color(0xffDDF247), onPrimary: Colors.black, secondary: Colors.black, onSecondary: Colors.white, error: Colors.red, onError: Colors.white, background: Colors.white, onBackground: Colors.black, surface: Colors.white, onSurface: Colors.black,),
          appBarTheme: const AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.transparent,
              foregroundColor: primaryTextColor,
              actionsIconTheme: IconThemeData(color: secondaryButtonColor)),
          fontFamily: 'Urbanist'),
      home: SplashScreen(seen: seen),
    );
  }
}
