import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding/constants/prefs_key.dart';
import 'package:onboarding/screen/home_screen.dart';
import 'package:onboarding/screen/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  prefs = await SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isOnboarded = prefs.getBool(PrefsKeys.isOnboarind) ?? false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.getTextTheme('Jua'),
      ),
      home: isOnboarded ? HomeScreen() : OnboardingScreen(),
    );
  }
}
