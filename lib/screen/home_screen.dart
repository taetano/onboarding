import 'package:flutter/material.dart';
import 'package:onboarding/constants/prefs_key.dart';
import 'package:onboarding/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        title: Text(
          'Home Page!',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                prefs.remove(PrefsKeys.isOnboarind);
              },
              icon: Icon(Icons.delete))
        ],
      ),
      body: Center(
        child: Text(
          '환영합니다!',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
