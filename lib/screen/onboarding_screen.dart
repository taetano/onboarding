import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding/constants/prefs_key.dart';
import 'package:onboarding/main.dart';
import 'package:onboarding/screen/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            // 첫 번째 페이지
            PageViewModel(
              title: "빠른 개발",
              body: "Flutter의 hot reload는 쉽고 UI 빌드를 도와줍니다.",
              image: Padding(
                padding: EdgeInsets.all(32),
                child: Image.network('https://i.ibb.co/2ZQW3Sb/flutter.png'),
              ),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                bodyTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            // 두 번째 페이지
            PageViewModel(
              title: "표현력 있고 유연한 UI",
              body: "Flutter에 내장된 아름다운 위젯들로 사용자를 기쁘게 하세요.",
              image: Image.network('https://i.ibb.co/LRpT3RQ/flutter2.png'),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                bodyTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
          next: Text('Next', style: TextStyle(fontWeight: FontWeight.w600)),
          done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {
            prefs.setBool(PrefsKeys.isOnboarind, true);
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (ctx) => HomeScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
